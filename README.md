# Applied Natural Language Processing in the Enterprise

This is the companion repo for _Applied Natural Language Processing in the Enterprise_, an O'Reilly Media publication by Ankur A. Patel and Ajay Uppili Arasanipalai. Here, you will find all the source code from the book, published here on GitHub for your convenience.

Follow the steps below to get started with setting up your environment and running the code examples.

## Setup

To install all the required libraries and dependencies, run the following command:

```
pip install nlpbook
```

However, the recommended approach is to use `conda`, a cross-platform, language-agnostic package manager that automatically handles dependency conflicts.

If you have not already, install the [Miniforge distribution of Python 3.8](https://github.com/conda-forge/miniforge#download) based on your OS. If you are on Windows, you can choose the [Anaconda distribution of Python 3.8](https://www.anaconda.com/products/individual) instead of the Miniforge distribution, if you wish to.

Once `conda` is installed, run the following command:

```
conda install -c nlpbook nlpbook
```

Alternatively, if you'd like to keep your environment for this book isolated from the rest of your system (which we highly recommend), run the following commands:

```
conda create -n nlpbook
conda activate nlpbook
conda install -c nlpbook nlpbook
```

Then run `conda activate nlpbook` every time you want to return to your environment. To exit the environment, run `conda deactivate`.

Next, install the spaCy models.

```
python -m spacy download en_core_web_sm
python -m spacy download en_core_web_lg
python -m spacy download en_core_web_trf
```

## Setup Environment Directly

If you're interested in setting up an environment to quickly get up and running with the code for this book, run the following commands from the root of this repo (please see the "Getting the Code" section below on how to set up the repo first).

```
conda env create --file environment.yml
conda activate nlpbook
```

You can also grab all the dependacies via `pip`:

```
pip install -r requirements.txt
``` 

## Getting the Code

All publicly released code is in this repository. The simplest way to get started is via Git:

```
git clone https://github.com/nlpbook/nlpbook.git
```

If you're on Windows or another platform that doesn't already have `git` installed, you may need to obtain a [Git client](https://git-scm.com/downloads).

If you want a specific version to match the copy of the book you have (this can occasionally change), you can find previous versions on the [releases page](https://github.com/nlpbook/nlpbook/releases).

Next, download data from AWS S3 (the data files are too large to store and access on Github).

```
aws s3 cp s3://applied-nlp-book/data/ data --recursive --no-sign-request
aws s3 cp s3://applied-nlp-book/models/ag_dataset/ner/ models/ag_dataset/ner --recursive --no-sign-request
```

## How This Repo is Organized

Each chapter in the book has a corresponding notebook in the root of this project repository. They are named `chXX.ipynb` for the chapter XX. The appendices are named `apXX.ipynb`.

> **Note:** This repo only contains the code for the chapters, not the actual text in the book. For the complete text, please [purchase a copy of the book](https://www.amazon.com/dp/149206257X). Chapters 1, 2, and 3 have been open-sourced, courtesy of O'Reilly and the authors.

Once you'd navigated to the `nlpbook` project directory, you can lauch a Jupyter client such as Jupyter Lab, Jupyter Notebooks, or VS Code to view and run the notebooks.

## Contributions and Errata

We welcome any suggestions, feedback, and errata from readers. If you notice anything that seems off in the book or could use improvement, we've love to hear from you. Feel free to submit an issue here on GitHub or on our errata page.

## Copyright Notice

This material is made available by the Creative Commons Attribution-Noncommercial-No Derivatives 4.0 International Public License.

> **Note**: You are free to use the code in accordance with the MIT license, but you are not allowed to redistribute or sell any of the text presented in chapters 1, 2, and 3, which have been open-sourced for the benefit of the community. Please consider purchasing a copy of the book if you are interested in reading the text that accompanies the code presented in this repo.
