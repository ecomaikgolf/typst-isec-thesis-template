#import "@local/iaik-master-thesis-template:1.0.0": *

// ----------------------------------------------------------------------------
// Thesis Configuration, Keywords, Abstract, Acknowledgements & Acronyms
// ----------------------------------------------------------------------------
#show: thesis.with(
  title: [
		Title and       #linebreak()
		Subtitle        #linebreak()
		of the Thesis   #linebreak()
		(up to 4 Lines) #linebreak()
	],
  author: ([Firstname Lastname], [BSc]),
  curriculum: [Computer Science],
  supervisors: (
    ([Firstname Lastname], [Academic Degrees]),
    ([Firstname Lastname], [Academic Degrees])
  ),
  date: [Month Year],
  acknowledgements: [
		Thanks everyone who made this thesis possible
  ],
  abstract: [
		English abstract of your thesis (at most one page)

    The abstract usually consists of two main parts: a motivational background
    and your contribution. Start with a few sentences of general introduction
    and background information to motivate your main research
    question/challenge. Then, summarize what your paper contributes and
    describe its (potential) impact. This includes a very short summary of all
    your important results and core performance numbers that characterize your
    approach/attack/countermeasure/implementation. Finally, summarize any key
    conclusions and calls to action that you have, e.g., apply the idea more
    broadly, get rid of some technology, find a countermeasure, or similar.

		English abstract of your thesis (at most one page)
  ],
  keywords: ([Broad keyword], [Keyword], [Specific Keyword],
             [Another specific keyword]),
	// set acronyms: none to disable them
	acronyms: ((
		"IAIK": "Institute of Applied Information Processing and Communications",
	)),
	list_of_figures:  true,
	list_of_tables:   true,
	list_of_listings: true,
)

// -------------------------------[[ CUT HERE ]]--------------------------------
//
// Welcome to the starting point of your final Master Thesis :) Congrats!
//
// Nice that you've chosen Typst as your typesetting system, you'll enjoy:
//
// - milisecond incremental builds
// - subsecond full builds
// - multithreaded builds
// - sane compiler error outputs without intermediate files
// - automatic multiple compiler passes (no more mklatex/makefile)
// - simpler scripting & syntax
// - similar power as in LaTeX, infinite extensibility
// - modern & new typesetting system
//
// Typst quickstart:
//
// - $ typst watch thesis.typ  (Incremental build, recommended)
// - $ typst build thesis.typ  (Plain build)
//
// Typst documentation, guides & help:
//
// - https://typst.app/docs/
// - https://sitandr.github.io/typst-examples-book/book/about.html
// - https://discord.gg/2uDybryKPe
// - https://forum.typst.app/
//
// Typst LSP: https://github.com/Myriad-Dreamin/tinymist
//
// - Much faster preview with :TypstPreview
// - https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist
//
// Better code syntax highlighting (Treesitter):
//
// - Typst supports WebAssembly plugins
// - There's a plugin to use treesitter as code highlighter backend (slower)
// - https://github.com/RubixDev/syntastica-typst
// - Optional. Use if you have a nice usecase. Toggle it in final PDF build
//
// Typst plugins:
//
// - https://typst.app/universe/
// - https://github.com/qjcg/awesome-typst
//
// Recommendations:
//
// - Keep code/text formatted at 80 cols as in this example
// - Use tinymist :TypstPreview (or vscode extension) for previewing changes
// - Check that you're using latest Typst & latest template version
// - Force #pagebreak() if your document is long. This triggers multithr. builds 
//
// Bugs, limitations, differences:
//
// - You'll find TODOs. Feel free to work on them and submit patches
// - For bugs, report them on the template upstream:
// - https://github.com/ecomaikgolf/typst-iaik-masterthesis-template
//
// -------------------------------[[ CUT HERE ]]--------------------------------


// ----------------------------------------------------------------------------
// Introduction
// ----------------------------------------------------------------------------

= Introduction <sec:intro>


// ----------------------------------------------------------------------------
// Background
// ----------------------------------------------------------------------------

= Background <sec:background>


// ----------------------------------------------------------------------------
// Attack
// ----------------------------------------------------------------------------

= Attack <sec:attack>


// ----------------------------------------------------------------------------
// Evaluation
// ----------------------------------------------------------------------------

= Evaluation <sec:evaluation>


// ----------------------------------------------------------------------------
// Discussion
// ----------------------------------------------------------------------------

= Discussion <sec:discussion>

What a nice template @typst_ernesto_iaik_template


// ----------------------------------------------------------------------------
// Notation
// ----------------------------------------------------------------------------

// TODO: No support for Notations (yet™)
// I personally don't use them so I didn't implement them

// ----------------------------------------------------------------------------
// Acronyms
// ----------------------------------------------------------------------------

// TODO: No support for showing page of first acronym
// - Set acronyms: none in thesis.with to disable acronyms
// - See https://typst.app/universe/package/acrostiche/ for documentations

#acronyms_page(acros)

// ----------------------------------------------------------------------------
// Bibliography
// ----------------------------------------------------------------------------

#bibliography("bibliography.bib")<sec:bibliography>

// ----------------------------------------------------------------------------
// Appendix (Optional)
// ----------------------------------------------------------------------------

// IGNORE
#show heading.where(level: 1): set heading(supplement: "Appendix")
#show heading.where(level: 1): set heading(numbering: "A.")
#show heading.where(level: 2): set heading(numbering: "A.1.")
#show heading.where(level: 3): set heading(numbering: "A.1.1.")
#set figure(numbering: num =>
	numbering("A.1", counter(heading).get().first(), num)
)
#set math.equation(numbering: num =>
	(numbering("A.1", counter(heading).get().first(), num))
)
#counter(heading).update(0)
// END IGNORE

// Just add a regular section here and it will eb an Appendix!
//
// = Example
// This is an appendix

// vim:tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab colorcolumn=81
