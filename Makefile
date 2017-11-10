

run: venv/bin/activate
	. venv/bin/activate && python3 blockchain.py


#If the virtual environment hasn't been installed in the current dirctory,
#this command will install it.
venv/bin/activate:
	@echo "***********************************************************"
	@echo "*                    WELCOME                              *"
	@echo "*  We will be creating a python virtual environment in    *"
	@echo "* this current directory. This is so any libraries don't  *"
	@echo "* conflict with your current python installation.         *"
	@echo "***********************************************************"
	@virtualenv venv -p `which python3` || (echo "\n\nYou must install pip and virtualenv."\
	"\nI suggest running the following command:" \
	"\n\tsudo apt install python-pip virtualenv\n\n" &&\
	echo "I will do it now, but you'll have to trust me to type in your password:" && sudo apt install python-pip virtualenv && virtualenv venv -p `which python3`)
	@echo "***********************************************************"
	@echo "*                    LIBRARIES                            *"
	@echo "* Installing into your virtual environment:               *"
	@echo "* Everything that is in requirements.txt - the python way *"
	@echo "***********************************************************"
	. venv/bin/activate && echo $$PS1 && pip install -r requirements.txt
	@echo
	@echo "***********************************************************"
	@echo "*              INSTALLATION COMPLETE                      *"
	@echo "* Now, activate your virtual environment, type:           *"
	@echo "*                                                         *"
	@echo "*     source venv/bin/activate                            *"
	@echo "***********************************************************"


install: venv/bin/activate


.PHONY: install
