-- Space Invaders Screensaver
-- by dr pendejoloco

on run
	-- Obtener la ruta del HTML
	set htmlPath to (path to me as text) & "Contents:Resources:index.html"
	set htmlPosix to POSIX path of (htmlPath as alias)
	set htmlURL to "file://" & htmlPosix
	
	-- Abrir en Safari en modo kiosko (pantalla completa)
	tell application "Safari"
		activate
		make new document with properties {URL:htmlURL}
		delay 0.5
		tell application "System Events"
			keystroke "f" using {command down, control down}
		end tell
	end tell
end run
