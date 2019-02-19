# python3-lambda-builder
## How to use
1.  Create task folder 
2. Create handler.py inside the task folder
3. Create src folder inside task folder  
4. Put all your extra source code inside src folder
5. Put all the requirements in requirements.txt inside task folder
6. `$cd` to task
7. Run `$docker run -v ${PWD}:/home/bamboo/data -v ${PWD}/dist:/home/bamboo/dist lambda-builder-py3.6`
## Your package should appear in dist folder and ready to be uploaded to S3 bucket
