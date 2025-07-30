BEATS_REPO_URL ?= git@github.com:elastic/beats.git
ELASTIC_AGENT_REPO_URL ?= git@github.com:elastic/elastic-agent.git

clone-beats:
	git clone $(BEATS_REPO_URL)

clone-elastic-agent:
	git clone $(ELASTIC_AGENT_REPO_URL)

