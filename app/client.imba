import 'imba/reset.css'

tag app
	css video w:500px pos:absolute t:50px l:50% x:-50%
	css timeline-view pos:absolute t:350px l:50% x:-50%
	def render
		<self>
			<video$video controls src="http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4">
			<timeline-view video=$video width=500>
			<button[m:10px p:5px px:5 bgc:sky3 bgc@hover:sky2 tween:colors rd:lg]> "DebugButton"

tag timeline-view
	prop video\HTMLVideoElement
	prop width\number = 300
	prop autorender = 30fps
	css h:20px bgc:cooler4
		.track bgc:cooler3 pos:absolute t:0 l:0 w:100% h:100% rd:xs
		.playhead w:4px h:calc(100% + 4px) t:-2px l:-2px
			pos:absolute bgc:rose5 rd:md
	#wasPaused = false
	def handleTouch e\TouchEvent
		if e.type === 'pointerdown'
			#wasPaused = video.paused
			video.pause()
		if e.type === 'pointerup'
			video.play() unless #wasPaused
			

	def render
		if not width
			console.log("No width specified!")
		const playedPercent = video.currentTime / video.duration
		const playheadPosition = playedPercent * width
		<self[w:{width}px] @touch.fit(self, 0, video.duration)=(handleTouch)>
			<div.track>
			<div.playhead[x:{playheadPosition}px]>

imba.mount <app>
