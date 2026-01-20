export PATH := ./node_modules/.bin:$(shell echo $$PATH)

# must run on port 3000
run: node_modules stop
	@echo "Starting server..."
	@elm-live src/Main.elm --port 3000 > server.log 2>&1 &
	@while ! curl -s localhost:3000 > /dev/null; do sleep 1; done
	@echo "Server ready at http://localhost:3000"

# must kill process listening to port 3000
stop:
	lsof -ti:3000 | xargs kill 2>/dev/null || true

node_modules: package-lock.json
	npm ci
	touch node_modules
