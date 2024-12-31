#let acronyms_page(acros) = context [
	#if acros.get() != none [

		= Acronyms<sec:acronyms>

		#v(0.4cm)
		#context [
			#show grid: set block(above: 0cm, below: 0.5cm)
			#for a in acros.get() [
					#let acr = a.at(0)
					#let cmp = a.at(1).at(0)
					#grid(columns: (1.4cm, 1.4cm, 0.45cm, auto),
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
					)
			]
		]
	]
]
