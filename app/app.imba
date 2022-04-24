import './canvas'
import './pickers'

global css body m:0 p:0 rd:lg bg:yellow1 of:hidden

const strokes = [1,2,3,5,8,12]
const colors = ['#F59E0B','#10B981','#3B82F6','#8B5CF6']
const state = {stroke: 5, color: '#3B82F6'}

tag App
	<self>
		<div[ta:center pt:20 o:0.2 fs:xl]> 'draw here'
		<app-canvas[pos:abs inset:0] state=state>
		<div.tools[pos:abs b:0 w:100% d:hgrid ja:center]>
			<stroke-picker options=strokes bind=state.stroke>
			<color-picker options=colors bind=state.color>

imba.mount <App[pos:abs inset:0]>