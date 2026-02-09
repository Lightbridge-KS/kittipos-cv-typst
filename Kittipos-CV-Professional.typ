// #import "modern-acad-cv.typ": *
#import "@preview/modern-acad-cv:0.1.0": *
#import "@preview/fontawesome:0.4.0"
#import "@preview/use-academicons:0.1.0"

// Color Setup
#let link-color = rgb("#800000")  // red!50!black
#let cite-color = rgb("#4040a0")  // blue!50!gray

// Set up colored links
#show link: it => [
  #set text(fill: link-color)
  #it
]

// Set up colored citations
#show cite: it => [
  #set text(fill: cite-color)
  #it
]
// set the language of the document
#let language = "en"

// loading meta data and databases (needs to be ad this directory)
#let metadata = yaml("metadata.yaml")
// Override accent color to medical blue
#let metadata = metadata + (colors: metadata.colors + (main_color: "#1565C0"))
#let multilingual = yaml("dbs/i18n.yaml")
#let work = yaml("dbs/work.yaml")
#let education = yaml("dbs/education.yaml")

// defining variables
#let headerLabs = create-headers(multilingual, lang: language)

#show: modern-acad-cv.with(
  metadata,
  multilingual,
  lang: language,
  font: "Fira Sans",
  show-date: true
)

// Custom Function
#let certificate(certificate_link) = {
  link(certificate_link)[Certificate]
}


= #headerLabs.at("work")

#cv-auto-stc(work, multilingual, lang: language)

= #headerLabs.at("education")

#cv-auto-stp(education, multilingual, lang: language)


= #headerLabs.at("training")

== Data Science

#pad(left: 9em, top: 1em)[
- *Statistical Learning by StanfordOnline* (edX) --- #certificate("https://courses.edx.org/certificates/5547b0ad382e4372b5173f4d482d60a5")
- *Advanced R Programming by Johns Hopkins University* (Coursera) --- #certificate("https://coursera.org/share/73621d441d07e2fd00ee0ac0ec19bb38")
- *Data Analysis with R Programming by Google* (Coursera) --- #certificate("https://coursera.org/share/a7341c020f68003ae532547d73fc4ccf")
- *Short course* by DeepLearning.AI
  - LangChain for LLM Application Development --- #certificate("https://learn.deeplearning.ai/accomplishments/31ddf9a5-e5c4-4db5-aa3a-7ce89d87e3b4?usp=sharing")
  - LangChain Chat with Your Data --- #certificate("https://learn.deeplearning.ai/accomplishments/ef6f0756-a43f-4a34-a0fe-56479970b3d7?usp=sharing")
]

== Others

#pad(left: 9em, top: 1em)[
- *Cell and molecular biology course for postgraduate students* (Mahidol university)
]


// Bibliography

// #bibliography("ref/CV.bib")
