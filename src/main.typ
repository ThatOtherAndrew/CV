#import "minimal-cv.typ": *
#import "@preview/fontawesome:0.5.0": *

#let url(href, display) = underline(link(href, text(blue, display)))
#let default = (
  body-color: black,
  margin: 18pt,
)
#let emphasis = (
  body-color: blue,
)
#show strong: set text(fill: default.body-color.lighten(30%))


#show: cv.with(
  theme: default,
  title: "Andrew Stroev",
  subtitle: [
    Experiential polyglot. Pursuing what I'm most interested in at every given point in time.
  ],
  aside: {
    section(
      theme: emphasis,
      "Contact",
      {
        entry(
          "Home",
          {
            fa-icon("house", solid: true)
            h(5pt)
            "St Andrews, Scotland"
          },
          none,
        )
        entry(
          "Phone",
          {
            fa-icon("phone", solid: true)
            h(6pt)
            link("tel:+447539072106", "+44 7539 072106")
          },
          none,
        )
        entry(
          "Email",
          {
            fa-icon("envelope", solid: true)
            h(6pt)
            link("mailto:stroev.andrew@gmail.com", "stroev.andrew@gmail.com")
          },
          none,
        )
        entry(
          "LinkedIn",
          {
            fa-icon("linkedin", solid: true)
            h(7pt)
            link("https://www.linkedin.com/in/andrew-stroev/", "in/andrew-stroev")
          },
          none,
        )
        entry(
          "GitHub",
          {
            fa-icon("github", solid: true)
            h(6pt)
            link("https://github.com/ThatOtherAndrew/", "ThatOtherAndrew")
          },
          none,
        )
      },
    )

    section(
      "Grades & Qualifications",
      {
        entry(
          theme: emphasis,
          "BSc",
          "Computer Science",
          right: "Current",
          none,
        )
        entry(
          [SQA Adv.#linebreak()Higher#v(-1em)],
          "Computer Science",
          right: "A",
          none,
        )
        entry(
          none,
          "Mathematics",
          right: "A",
          none,
        )
        entry(
          none,
          "Physics",
          right: "A",
          none,
        )
        entry(
          none,
          "Music",
          right: "A",
          none,
        )
      },
    )

    section(
      "Achievements & Awards",
      {
        entry(
          "ICPC",
          "NW Europe Regional Finalist",
          none,
        )
        entry(
          "ESMS",
          "Dawson International Innovation Prize",
          "Created a live online timetable for ESMS school bus services",
        )
        entry(
          "UKMT",
          "Senior 2023 Gold",
          none,
        )
        entry(
          none,
          "Pink Kangaroo 2022 Merit",
          [
            In addition: \
            - 3$times$ Gold, 1$times$ Silver
            - 1$times$ Best in Year
            - 1$times$ Best in School
          ],
        )
        entry(
          "BPhO",
          "Senior Physics Challenge Silver",
          none,
        )
        v(5pt)
        "+ 13 school-issued prizes (see LinkedIn)"
      },
    )

    section(
      "Languages",
      {
        entry(
          theme: emphasis,
          "Native",
          "🇬🇧  English",
          none,
        )
        entry(
          theme: emphasis,
          none,
          "🇨🇳  Mandarin (Chinese)",
          none,
        )
        entry(
          theme: emphasis,
          none,
          "🇷🇺  Russian",
          none,
        )
        entry(
          "Basic",
          "🇩🇪  German",
          none,
        )
      },
    )

    section(
      "Extracurricular Activities",
      {
        entry(
          "Music",
          none,
          "Piano, Percussion, Voice",
        )
        entry(
          "Sports",
          none,
          "Parkour, Trampoline, Dance",
        )
        entry(
          "Misc.",
          none,
          "Competitive Programming,\nHackathons, (Un)conferences"
        )
      },
    )

  }
)


// #section(
//   "Overview",
//   par(justify: true)[
//     I am a *first-year computer science* university student who is *curious and motivated* in seeking out problems and challenges, and *proactive and ambitious* in creating solutions. I strongly believe in an *intuitition-first approach* to learning, and adapt well to *fast-paced environments*.
//   ]
// )

// #section(
//   "Skills & Technologies",
//   [
//     Highly proficient in *Python*, experienced with *HTML/CSS* and *JS/TS* and adjacent frameworks (*Svelte*, *Astro*). Proficient in *Git*, *CI/CD*, *Docker*, and using *Linux*. Adept at working in *team settings* and a *fast learner*.
//   ]
// )


#section(
  "Educational Background",
  {
    entry(
      theme: emphasis,
      [2024 #sym.dash 2028],
      "University of St Andrews",
      right: "BSc Computer Science",
      none,
    )
    entry(
      [2018 #sym.dash 2024],
      "Erskine Stewart's Melville Schools",
      right: "Secondary School",
      none,
    )
  },
)

#section(
  "Previous Experience",
  {
    entry(
      "August 2025",
      "Hack Club: Shipwrecked",
      right: url("https://shipwrecked.hackclub.com/", "shipwrecked.hackclub.com"),
      [
        - Invited to 4-day hackathon for shipping 4 projects
        - Successfully "went viral" with one project
      ]
    )
    entry(
      "July 2025",
      "SPARC",
      right: url("https://sparc.camp/", "sparc.camp"),
      [
        - Selected to attend the SPARC 2025 summer program
      ]
    )
    entry(
      "May 2025",
      "PyCon IT",
      right: url("https://2025.pycon.it/en/submission/npqm", "2025.pycon.it/en/submission/npqm"),
      [
        - Invited to speak about digital audio processing
        - Youngest speaker at PyCon IT 2025
      ]
    )
    entry(
      "Feb 2025",
      "TermOS",
      right: url("https://github.com/ThatOtherAndrew/TermOS", "github.com/ThatOtherAndrew/TermOS"),
      [
        - Created a TUI fantasy OS/DE in pure Python in 24 hours
        - Won first place in the HackLondon 2025 hackathon
      ]
    )
    entry(
      "Sep 2024",
      "Class Representative",
      right: url("https://info.cs.st-andrews.ac.uk/student-handbook/school/other-school.html", "University of St Andrews"),
      [
        - Elected as First Year Class Rep. for Computer Science
      ],
    )
    entry(
      "Aug 2024",
      "European Summer Program on Rationality",
      right: url("https://espr.camp/", "espr.camp"),
      [
        - Selected to attend the ESPR 2024 summer camp
        - Presented talks on digital signal processing and computational graphs in Queen's College, Oxford
      ],
    )
    entry(
      "Jul 2024",
      "Synchrotron",
      right: url("https://synchrotron.thatother.dev/", "synchrotron.thatother.dev"),
      [
        - Created a Python graph-based DSP engine from scratch
        - Reached front page of Hacker News
      ],
    )
    entry(
      "Mar 2024",
      "Mathematics Tutoring",
      [
        - Tutored SQA National 5 Mathematics privately
        - Praised for high-quality notes and clear explanations
        - Wrote STEM-focused educational material and class notes (e.g. #url("https://notes.thatother.dev/", "notes.thatother.dev"))
      ],
    )
    entry(
      "May 2023",
      "Reusing IT",
      right: url("https://www.reusingit.org/", "www.reusingit.org"),
      [
        - Developed a bootable USB to automatically reconfigure NHS thin clients for use as Ukrainian school PCs
        - Saved over 10,000 thin client devices from going to waste, shipping them to students impacted by war
      ],
    )
    entry(
      "Dec 2022",
      "British Informatics Olympiad",
      right: url("https://www.olympiad.org.uk/", "www.olympiad.org.uk"),
      [
        - Scored 77% in the 2023 Round One paper, the highest score ever recorded at ESMS
        - Qualified & participated in the 2022 paper (Dec 2021)
      ],
    )
    entry(
      "Nov 2022",
      "Breadcord",
      right: url("https://breadcord.com/", "breadcord.com"),
      [
        - Designed and developed a Discord bot framework in Python, with comprehensive documentation
        // - Implemented full CI/CD, Docker, and a project website
        // - Created a marketing and project demonstration video
        - Won _Judges' Favourite (Advanced Programming_) at #url("https://online.coolestprojects.org/", "Coolest Projects UK 2024")
      ],
    )
    v(5pt)
    [
      Also participated in *Hack Club*, *Advent of Code*, *Scottish Mathematical Challenge*, *International Collegiate Programming Contests* (UKIEPC and NWERC), *UK Maths Trust*, *Bebras*, and *National Youth Orchestras*.
    ]
  },
)
