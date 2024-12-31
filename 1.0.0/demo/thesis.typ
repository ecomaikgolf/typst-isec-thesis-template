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
		"AES": "Advanced Encryption Standard",
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

Provide an introduction to your work (typically 1 to 2 pages, but can also be
more).

The introduction is structured like a longer version of the abstract. You start
with a paragraph or two of general background, getting more and more specific,
and culminating in a clear motivation for your main research problem or thesis
goal. This should be a convincing and well-founded story: Readers will stop
reading here if they do not see the relevance of your work for them. If you
have a central research question, state it clearly. If there are particular
papers relevant to your work, such as central techniques you used, designs you
built on or evaluated, or similar, be sure to include citations here.

Then, provide a summary and relevant details to characterize your contribution
and approach for solving the research problem. The introduction is generally
written in present tense and active form -- everything happens now and is done
by "we", the author(s): "We provide an implementation", "We discuss", "We
evaluate", etc. The focus is on your final _outcome_ and gained insights, not
on your personal journey to get there; for example, do include facts like the
runtime of your implementation if it is relevant for judging its performance,
but do not include how many months it took you to produce this implementation.
Provide a concise summary of your approach and your main findings, including
all details already given in the Abstract and some more details. This includes
a clear definition of the scope of your work and your assumptions, such as your
attacker model, hardware/software used, and similar. There should be no big
(positive or negative) surprises on your results for the reader in the
remaining paper, except for technical details on _how_ you achieved your
results. If there is a useful central figure that helps explain and
contextualize your contribution, or a summary table that compares your
contribution with related work, you can add it here. Finish this part with a
(bulleted) list of around 3 to 5 main scientific contributions, such as new
ideas and techniques, applications of techniques to new application areas,
novel implementation results, performance numbers, and similar.

At some point in your thesis, you need to discuss relevant related work. A good
spot for this discussion can be in the _Introduction_ before or after
describing your contribution, in the _Background_ section, or in a final
_Discussion_ section.

#partitle(title: [Outline])[
	The introduction ends with an outline (aka mapping), explaining how this paper
	is structured: In @sec:background, we introduce the relevant background on some
	topic. (#sym.dots.h) Finally, in @sec:conclusion we conclude with a discussion
	of our findings and directions for future work.
]

= Background <sec:background>

In this chapter, we provide some usage examples for glossaries and acronym
lists with `glossaries` (Section 2.1), bibliography and citations with
`biblatex` (Section 2.2), and some dummy content.

== Notations and Acronyms

Symbols and acronyms are defined in the preamble, after loading the
`glossaries` package. A usage example follows in the next paragraph.

In this chapter, we introduce the necessary background on the aes.
We denote binary exclusive-or by $xor$.

== Citations

// TODO fix GLS and textcite citatiosn
This is an example of how to specify and cite a book @AESbook, a journal
article @bstjShannon49, a conference article @spKocherHFGGHHLM019, an informal
report @iacrSchneierFKR15, and a website @webIAIK21. We can also add the
authors' names to the citation: #acr("AES") is a block cipher defined by
#cite(<AESbook>, form: "prose").


== Writing Style

Writing style recommendations for English differ a bit from German:

- Prefer short, clear sentences over long, convoluted sentences.
- Prefer active voice, well-defined subjects, and meaningful verbs over passive
  voice, vague subjects, and vague verbs.
- Do not concatenate too many nouns.
- When you refer to the same thing several times consecutively, call it by the
  same name instead of inventing synonyms. ("Wortwiederholung" is ok.)

Consider using a style checker such as Grammarly -- ask your supervisor for
details.

Rules for placing commas in English are quite easy, but also quite different
from German. The most important ones include:


- No comma before "that": "Due to the fact that#sym.dots.h"
- No comma before infinitives: "We did this to find out#sym.dots.h"
- No comma between subject and verb (be careful not to confuse with
  introductory clauses): "Completing the list is essential."
- No comma before indispensable relative clauses: "The function returns the
  key which has the highest score.""
- Put a comma before and after dispensable relative clauses and other
  non-essential phrases: "The key, which consists of two subkeys, is
  generated#sym.dots.h""
- Put a comma after introductory clauses: "Consequently, we use#sym.dots.h";
  "After the last step, we return#sym.dots.h"; "To complete the list, we
  add#sym.dots.h".
- Put a comma before and after "e.g." and "i.e.": "A block cipher, e.g.,
  AES." Consider using "for example/for instance/such as" and "that is"
  instead.
- Many authors put a comma before "and, but, for, or, nor, so, yet" when they
  connect two independent clauses: "We repeated the experiment, but the result
  was different." This is a matter of (your or your supervisor's) preference.
- Many authors put a comma before "and, or" in the last element of an
  enumeration of three or more elements: "Alice and Bob", but "Alice, Bob, and
  Caesar." This "Oxford comma" is a matter of (your or your supervisor's)
  preference.

Typesetting and other hints:

- To typeset English 'single' and "double" quotation marks in Typst, start
  with `"` (doble quote) and end with `"` (double quote).

- Display math formulas should be introduced in the previous sentence and
  include punctuation (optionally separated by a tmacroshin space \verb|\,|): The
  ciphertext is computed as 

$ C = E_K (P). $

- Captions are usually above tables, but below figures, and end with a full stop.
- "128 bits", but "128-bit key".

- References are typically capitalized and separated by a non-breaking space:
  `Section Number`. Try `@sec:intro` (@sec:intro)

#pagebreak()
== Dummy Content

#let dummytext = [
  Hello, here is some text without a meaning. This text should show what a
  printed text will look like at this place. If you read this text, you will
  get no information. Really? Is there no information? Is there a difference
  between this text and some nonsense like “Huardest gefburn”? Kjift – not at
  all! A blind text like this gives you information about the selected font,
  how the letters are written and an impression of the look. This text should
  contain all letters of the alphabet and it should be written in of the
  original language. There is no need for special content, but the length of
  words should match the language.
]

#dummytext

$
accent(x, macron) 
 = frac(1, n) sum_(i = 1)^(i = n) x_i 
 = frac(x_1 + x_2 + dots.h + x_n, n)
$<eq:test>

#dummytext

$ 
integral_0^infinity e^(-alpha x^2) dif x 
  = frac(1,2) sqrt(integral_(-infinity)^infinity e^(-alpha x^2)) 
    dif x integral_(-infinity)^infinity e^(-alpha y^2) dif y 
  = frac(1,2) sqrt(frac(pi, alpha)) 
$

#dummytext

$
sum_(k = 0)^infinity a_0 q^k 
  = lim_(n arrow.r infinity) sum_(k = 0)^n a_0 q^k 
  = lim_(n arrow.r infinity) a_0 frac(1 - q^(n + 1), 1 - q) 
  = frac(a_0, 1 - q) 
$

#dummytext

$
x_(1, 2) 
  = frac(-b plus.minus sqrt(b^2 - 4 a c), 2 a) 
  = frac(-p plus.minus sqrt(p^2 - 4 q), 2) 
$

#dummytext

$
frac(diff^2 Phi, diff x^2) 
    + frac(diff^2 Phi, diff y^2) + frac(diff^2 Phi, diff z^2) 
  = frac(1, c^2) frac(diff^2 Phi, diff t^2) 
$

#dummytext

= Conclusion <sec:conclusion>

  #set par(
		justify: true,
		leading: 0.54em,
		spacing: 0.6em,
		first-line-indent: 0.35cm,
		linebreaks: "optimized"
	)

Provide the conclusions of your work (typically $frac(1,2)$ to 2 pages).

This is again structured somewhat similarly to the abstract and introduction.
However, unlike the abstract, it can be partially written in past tense (for
actions you performed and results that you found) as well as future tense or
conditional (for predictions what the impact of your work will be, which future
work could/should be done).

Start by briefly recalling the main motivation and main goal of your work.
Repeat the main hard facts, performance numbers, and properties of your
solution/work.

Emphasize your main insights, findings, and lessons learned. If you do not have
a dedicated discussion section, you can discuss your findings and put them into
perspective. If you have any recommendations that follow from your work, phrase
them here.

Finally, you can point out open problems or remaining issues that call for
future work, but phrase this in a positive way -- as opportunities. There
should be no complete surprises (such as significant shortcomings not discussed
earlier) here, but you can provide some new thoughts and ideas.

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

// full: true => include all works from the given bibliography files, even
// those that weren't cited in the document
#bibliography("bibliography.bib", full: true)<sec:bibliography>

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
