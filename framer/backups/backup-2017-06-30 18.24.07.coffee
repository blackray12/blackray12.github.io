# Import file "forframer"
skt = Framer.Importer.load("imported/forframer@1x")

skt.mainScreen.clip = true
skt.mainScreen.height = 1334
skt.mainScreen.width = 750
screenWidth = screen.width * window.devicePixelRatio
screenHeight = screen.height * window.devicePixelRatio

if Utils.isPhone()
	Framer.Device.fullScreen = true
	if screenWidth > 750
		skt.mainScreen.scale = screenWidth/900
		skt.mainScreen.y = (screenHeight - 64*devicePixelRatio - skt.mainScreen.height)/2
	else
		skt.mainScreen.y = (screenHeight - skt.mainScreen.height)/2
	skt.mainScreen.x = (screenWidth - skt.mainScreen.width)/2

BodymovinLayer1 = require 'Bodymovin1'
BodymovinLayer2 = require 'Bodymovin2'
BodymovinLayer3 = require 'Bodymovin3'

story2 = new Layer
	superLayer: skt.mainScreen
	width: 750
	height: 1334
	image: "images/IMG_1489.PNG"
# 	opacity: 0
	scale: 0.05
	x: -310

circle1 = new BodymovinLayer1
	superLayer: skt.circleArea3
	width: 100
	height: 100
	
circle3 = new BodymovinLayer2
	superLayer: skt.circleArea2
	width: 100
	height: 100
	
skt.flow.draggable.enabled = true
skt.flow.draggable.speedX = 0
skt.flow.draggable.constraints = 
	x: 0
	y: -590
	width: 900
	height: 2400

skt.flow.on "change:y", ->
	
	

