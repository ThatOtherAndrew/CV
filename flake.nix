{
  description = "Andromeda's CV";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      packages = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};

          texEnv = pkgs.texliveSmall.withPackages (ps: with ps; [
            latexmk
            # latexsym and tabularx are in tools (included in texliveSmall)
            preprint   # fullpage
            titlesec
            marvosym
            enumitem
            fancyhdr
            babel
            ec         # T1/EC fonts required by babel-english
            cm-super   # Type1 versions of EC fonts for PDF output
            # glyphtounicode is part of the base distribution
          ]);
        in
        {
          default = pkgs.stdenvNoCC.mkDerivation {
            pname = "andromeda-cv";
            version = "0.1.0";

            src = ./src;

            nativeBuildInputs = [ texEnv pkgs.poppler-utils pkgs.imagemagick ];

            buildPhase = ''
              export TEXMFHOME="$TMPDIR/texmf"
              latexmk -pdf -interaction=nonstopmode cv.tex
            '';

            installPhase = ''
              mkdir -p $out/site

              cp cv.pdf $out/site/andromeda-cv.pdf
              cp ${./index.html} $out/site/index.html

              # Generate OG preview image: render page 1 at high res, resize width to 1200, crop top 630px,
              # then composite a white gradient fade at the bottom
              pdftoppm -f 1 -l 1 -r 300 -png cv.pdf preview
              convert preview-1.png -resize 1200x -crop 1200x630+0+0 +repage \
                \( -size 1200x200 gradient:none-white \) \
                -gravity south -composite \
                $out/site/preview.webp
            '';
          };
        }
      );
    };
}
