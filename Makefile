
start:
	bin/rails server --port 8080
	# should be able to visit http://127.0.0.1:8080/ bc VS Code is somehow forwarding the traffic from my local system... neat!

## recent(ish) commands i'm running

# create Articles controller
## bin/rails generate controller Articles index --skip-routes

# find processes on relevant ports
## lsof -i -P -n | grep LISTEN
# and stop them
## fuser -k 3000/tcp
