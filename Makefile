
# BUILD_DIR:=/home/isucon/webapp/go
BIN_NAME:=isuports


# .PHONY: build
# build:
# 	cd $(BUILD_DIR); \
# 	go build -o $(BIN_NAME)

.PHONY: deploy
deploy:
	sudo systemctl restart nginx; \
	sudo systemctl restart mysql.service; \
	sudo systemctl restart $(BIN_NAME).service


.PHONY: bench
bench:
	cd /home/isucon/bench; \
	./bench -target-addr 127.0.0.1:443


# .PHONY: gitpullmain
# gitpullmain:
# 	git fetch --all
# 	git checkout main
# 	git reset --hard
# 	git pull origin main


# # make gitpull BRANCH=
# .PHONY: gitpull
# gitpull:
# 	git fetch --all
# 	git checkout ${BRANCH}
# 	git pull
