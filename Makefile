include .env

.DEFAULT_GOAL := all

kaggle:
	pip install -U pip -q
	pip install kaggle -q
credentials: kaggle
	@echo '{"username":"${KAGGLE_USERNAME}","key":"${KAGGLE_KEY}"}' > ~/.kaggle/kaggle.json
	@echo "===> Credentials added"
	@chmod 600 ~/.kaggle/kaggle.json
	@echo "===> permissions added"
get-data: credentials
	@kaggle competitions download -c feedback-prize-english-language-learning
	@echo "===> Data downloaded"
unzip-data: get-data
	@mv feedback-prize-english-language-learning.zip data/
	@unzip -o data/feedback-prize-english-language-learning.zip -d data/
	@rm data/feedback-prize-english-language-learning.zip
	@echo "===> Data unzipped"
all: unzip-data
	@echo "===> All done"