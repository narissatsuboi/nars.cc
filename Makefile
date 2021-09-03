# To deploy the website, setup your keys:
#
# 	sudo pip install awscli
# 	aws configure
#
# Then run:
# 	make deploy


deploy:
	aws s3 --profile personal sync ../nars s3://nars.cc \
		--exclude ".git/*"\
		--exclude ".gitignore"\
		--exclude "*.DS_STORE"\
		--exclude "Makefile"\
		--delete


