docker:
	@docker build -t alextanhongpin/go-kube .

start:
	@docker run -p 8080:8080 alextanhongpin/go-kube 
