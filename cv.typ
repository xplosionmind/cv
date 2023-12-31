#import "/template/cv.typ": *

// Load CV data from YAML
#let cvdata = yaml("cv.yml")

#let uservars = (
	headingfont: "Chivo",
	bodyfont: "Garamond Libre",   // Set font for body
	fontsize: 10pt, // 10-12pt
	linespacing: 5pt,
	showAddress: false,
	showNumber: false,
)

#let cvinit(doc) = {
	doc = setrules(uservars, doc)
	doc = showrules(uservars, doc)

	doc
}

// Content
#show: doc => cvinit(doc)

#cvheading(cvdata, uservars)

#cveducation(cvdata)
#cvwork(cvdata)
#cvaffiliations(cvdata)
#cvprojects(cvdata)
#cvawards(cvdata)
#cvcertificates(cvdata)
#cvpublications(cvdata)
#cvskills(cvdata)
#cvreferences(cvdata)

#endnote
