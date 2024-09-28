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
#let multilingual = yaml("dbs/i18n.yaml")
#let work = yaml("dbs/work.yaml")
#let education = yaml("dbs/education.yaml")
#let skills = yaml("dbs/skills.yaml")

// Not used DB
#let grants = yaml("dbs-not-use/grants.yaml")
#let refs = yaml("dbs-not-use/refs.yaml")
#let conferences = yaml("dbs-not-use/conferences.yaml")
#let talks = yaml("dbs-not-use/talks.yaml")
#let committee = yaml("dbs-not-use/committee.yaml")
#let teaching = yaml("dbs-not-use/teaching.yaml")
#let training = yaml("dbs-not-use/training.yaml")


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

// = #headerLabs.at("software")


= #headerLabs.at("app")

== Radiology

#pad(left: 9em, top: 1em)[
- #link("https://kittipos-sir.shinyapps.io/tirads-calculator/")[*TIRADS Calculator:*] Calculator for Thyroid Imaging Reporting & Data System @tirads-calc-app
- #link("https://github.com/Lightbridge-KS/designCTER/")[*DesignCTER:*] Generate CT protocols template in emergency department @DesignCTER
- #link("https://github.com/Lightbridge-KS/adrenal_washout_app")[*AWC:*] Calculate adrenal percentage washout in multiphase CT @AdrenalWashoutCT
]

== Physiology

#pad(left: 9em, top: 1em)[
- #link("https://kittipos.shinyapps.io/harvard-spirometer/")[*Harvard Spirometer Tracing Simulator:*] Simulate Harvard Spirometer tracing from mathematical model @HarvardSpirometer-app
]

= #headerLabs.at("software-r-pkg")

== General

#pad(left: 9em, top: 1em)[
- #link("https://lightbridge-ks.github.io/thaipdf/")[*thaipdf:*] R Markdown to PDF in Thai language (CRAN) @thaipdf
]

== Education

#pad(left: 9em, top: 1em)[
- #link("https://lightbridge-ks.github.io/moodleStats/")[*moodleStats:*] Perform quiz and item analysis on Moodle Grades Report @moodleStats
- #link("https://lightbridge-ks.github.io/moodleQuiz/")[*moodleQuiz:*] Combine and manipulate Moodle Quiz Report for grading @moodleQuiz
- #link("https://lightbridge-ks.github.io/zoomclass/")[*zoomclass:*] Analyze Zoom’s participants report and chat file @zoomclass
- #link("https://lightbridge-ks.github.io/rslab/")[*rslab:*] Calculate various respiratory physiology parameters @rslab
]

== Research

#pad(left: 9em, top: 1em)[
- #link("https://lightbridge-ks.github.io/labChartHRV/")[*labChartHRV:*] Import and manipulate LabChart’s Heart Rate Variability Data @labChartHRV
]


= #headerLabs.at("training")

== Data Science

#pad(left: 9em, top: 1em)[
- *Statistical Learning by StanfordOnline* (edX) --- #certificate("https://courses.edx.org/certificates/5547b0ad382e4372b5173f4d482d60a5")
- *Advanced R Programming by Johns Hopkins University* (Coursera) --- #certificate("https://coursera.org/share/73621d441d07e2fd00ee0ac0ec19bb38")
- *Data Analysis with R Programming by Google* (Coursera) --- #certificate("https://coursera.org/share/a7341c020f68003ae532547d73fc4ccf")
- *LangChain for LLM Application Development* short course by DeepLearning.AI --- #certificate("https://learn.deeplearning.ai/accomplishments/31ddf9a5-e5c4-4db5-aa3a-7ce89d87e3b4?usp=sharing")
]


== Others

#pad(left: 9em, top: 1em)[
- *Cell and molecular biology course for postgraduate students* (Mahidol university)
]


// #cv-auto-cats(training, multilingual, headerLabs, lang: language)

// = #headerLabs.at("grants")
 
// #cv-auto-stp(grants, multilingual, lang: language)  


// = #headerLabs.at("pubs")

// #cv-cols(
//   "",
//   for lang in multilingual.lang.keys() {
//     if language == lang [
//       #multilingual.lang.at(lang).pubs-note
//     ] 
//   }
// )  

// == #headerLabs.at("pubs-peer")
// #cv-refs(refs, multilingual, tag: "peer", me: [Mustermensch, M.], lang: language)

// == #headerLabs.at("pubs-edited")
// #cv-refs(refs, multilingual, tag: "edited", me: [Mustermensch, M.], lang: language)

// == #headerLabs.at("pubs-book")
// #cv-refs(refs, multilingual, tag: "book", me: [Mustermensch, M.], lang: language)

// == #headerLabs.at("pubs-reports")
// #cv-refs(refs, multilingual, tag: "other", me: [Mustermensch, M.], lang: language)

// == #headerLabs.at("pubs-upcoming")
// #cv-refs(refs, multilingual, tag: "planned", me: [Mustermensch, M.], lang: language) 

// = #headerLabs.at("confs") 
// == #headerLabs.at("confs-conf")
// #cv-cols(
//   "", 
//   headerLabs.at("exp-confs")
// )

// #cv-auto-list(conferences, multilingual, lang: language)

// == #headerLabs.at("confs-talks")
// #cv-auto(talks, multilingual, lang: language)

// = #headerLabs.at("committee")

// #cv-auto(committee, multilingual, lang: language)

// = #headerLabs.at("teaching")

// == #headerLabs.at("teaching-thesis")
// #if language == "de" [
//   #cv-two-items[Bachelor][9][Master][2]
// ] else if language == "en" [
//   #cv-two-items[Bachelor][9][Master][2]
// ] else if language == "pt" [
//   #cv-two-items[Graduação][9][Pós-Graduação][2]
// ] else [
//   #cv-two-items[Bachelor][9][Master][2]
// ]

// == #headerLabs.at("teaching-courses")

// #cv-table-teaching(teaching, multilingual, lang: language)




= #headerLabs.at("others")

#cv-auto-skills(skills, multilingual, metadata, lang: language)

#pagebreak()

// Bibliography

#bibliography("ref/CV.bib")