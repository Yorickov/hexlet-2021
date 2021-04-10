install:
	bundle install

run:
	bin/checker data/rails.csv

run-t:
	bin/checker --parallel=5 data/rails.csv

run-f:
	bin/checker --no-subdomains --exclude-solutions data/rails.csv

run-f-t:
	bin/checker --no-subdomains --exclude-solutions --parallel=10 data/rails.csv

run-all:
	bin/checker --no-subdomains --exclude-solutions --filter=available data/rails.csv

run-all-t:
	bin/checker --no-subdomains --exclude-solutions --filter=available --parallel=10 data/rails.csv

run-all-t-cust:
	bin/checker --no-subdomains --exclude-solutions --filter $(O) rails.cs

test:
	bundle exec rspec

.PHONY: test
