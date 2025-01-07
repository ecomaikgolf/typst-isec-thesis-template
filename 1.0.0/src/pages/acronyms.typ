#let acronyms_page(acros) = context [
	#let acronym = acros.get()
	#if acronym != none [

		= Acronyms<sec:acronyms>

		#v(0.4cm)
		#context [
			#show grid: set block(above: 0cm, below: 0.5cm)
			#for a in acronym [
				#let acr = a.at(0)
				#let cmp = a.at(1).at(0)
				#let loc = acronym.at(acr).at(3).get()
				#grid(gutter: 0pt, columns: (1.4cm, auto, 0.4cm, 8.6cm, 0.65cm, auto),
					block[
						// Spacing
					],
					block[
						#acr
					],
					block[
						// Spacing
					],
					block[
						#cmp
					],
					block[

					],
					block[
						#if loc != none [
							#loc.join(", ")
						]
					],
				)
			]
		]
	]
]
