# kaggle_Feedback_Prize
Kaggle competition https://www.kaggle.com/competitions/feedback-prize-english-language-learning/

# Usage
## 1. ENV file :
Create an environment file named `.env` in the root directory of the project and add the following variables to it:
```bash
KAGGLE_USERNAME=<your kaggle username>
KAGGLE_KEY=<your kaggle key>
```
## 2. Download data :
Run the following command in the root directory to download the data from kaggle and unzip it:
```bash
make
```
**Note :** Makefile is made for linux users, if you are using windows, you can download the data manually from kaggle and unzip it in the `data` directory as follows: 
```bash
data
├── sample_submission.csv
├── test.csv
├── train.csv
└── .gitingore
```