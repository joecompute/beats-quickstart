BEATS_REPO_URL ?= git@github.com:elastic/beats.git
ELASTIC_AGENT_REPO_URL ?= git@github.com:elastic/elastic-agent.git
GOPATH ?= $(abspath .)
GO_VERSION ?= 1.24.4 # Should match beats/.go-version and ideally also elastic-agent/.go-version

beats:
	git clone $(BEATS_REPO_URL)

elastic-agent:
	git clone $(ELASTIC_AGENT_REPO_URL)


.PHONY: create-env
create-env:
	@# check if we already have the .env file
	@if [ -f .env ]; then \
		exit 0; \
	fi; \
	
	@# make a new .env file
	@echo "export GOPATH=$(GOPATH)" > .env
	@echo 'export PATH="$$PATH:$(GOPATH)/bin"' >> .env
	@echo "get gvm if not present"
	source .env && if ! command -v gvm >/dev/null 2>&1; then \
		echo "Installing gvm"; \
		go install github.com/andrewkroh/gvm/cmd/gvm@v0.5.2; \
	fi;
	@echo "set proper go version"
	@source .env && gvm use $(GO_VERSION) >> .env && echo 'eval $$(gvm $(GO_VERSION))' >> .env


