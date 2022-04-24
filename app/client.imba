tag Card
	prop title\string
	css .card w:25
		h:30
		m:5
		bgc:gray1
		bd:solid bc:gray7 bw:0.25 rd:xl
		px:5
		
		shadow:black
			
	<self>
		<div.card> title
		
		
const cards = [
	"Better call saul"
	"Mark Zuckerberg"
	"Bla bla bla"
	"Other movie"
	"Better call saul"
	"Mark Zuckerberg"
	"Bla bla bla"
	"Other movie"
]


tag App
	<self>
		<div[d:flex flw:wrap ji:center]> # Cards holder
			for cardTitle in cards
				<Card title=cardTitle>
		
imba.mount <App>