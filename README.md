# python3-lambda-builder
## How to use
1. Create task folder 
2. `$cd` to task 
3. Add your handler.py inside the task folder
4. Put all your extra source code inside a src folder
5. Create requiremnts.txt
6. Run `$docker run -v ${PWD}:/home/bamboo/data -v ${PWD}/dist:/home/bamboo/dist amarouane/lambda-builder-py3.6`

```
task
├── dist
│   └── pyfunction.zip
├── handler.py
├── requirements.txt
└── src
    ├── __init__.py
    ├── business_logic.py
    └── helpers.py
```

## Your package should appear in dist folder and ready to be uploaded to S3 bucket
