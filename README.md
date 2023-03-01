# EbutRna
There are 3 main files 

    - TrainNetwork
    - TestF1Score
    - GraphicalTest

In the functions subfolder there are

    - createPaddedBatch
    - CSV2ImageCellBatch
    - MatriceT
    - outputMatrix
    - padding
    - RNA2Net
    - Tensor8

In the Datasets Folder there are
    - archiveII
    - bprna
    - rnastralign

MAIN FILES

TrainNetwork:
    is a MATLAB Live Script that trains a neural network 
    to classify RNA sequences. The script loads the RNA sequence data, preprocesses it, 
    creates a neural network using MATLAB's Deep Learning Toolbox, and trains the network 
    using the loaded data. The network is then evaluated on a validation set to measure 
    its performance, and the script saves the trained network to a file. The script also 
    includes visualizations to help understand the data and the training process. 
    Overall, the script provides an end-to-end example of how to train a neural 
    network for RNA sequence classification using MATLAB.

TestF1Score:
    is a MATLAB Live Script that provides an implementation 
    for testing the accuracy of a trained neural network model using the F1-score metric. 
    The F1-score is a measure of a model's accuracy that takes into account both precision 
    and recall. The script first loads a pre-trained neural network model and a dataset 
    of RNA sequences and their corresponding secondary structures. It then processes the 
    dataset using the neural network model to generate predictions for the secondary 
    structures of the RNA sequences. The F1-score is then calculated for the predictions 
    and compared against the F1-score of a baseline model. The script outputs the F1-scores 
    for both models, allowing for a comparison of their accuracy. Additionally, it provides 
    visualizations of the predicted secondary structures and their comparison against the 
    true structures. Overall, the script provides a comprehensive testing framework for 
    evaluating the accuracy of a trained neural network model for RNA secondary structure 
    prediction.

GraphicalTest:
    provides a graphical interface for interactively testing 
    a neural network model's performance on a dataset.
    The user can load a pre-trained network model and a test dataset, and then evaluate 
    the model's predictions against the ground truth labels in the dataset. 
    The script generates a plot of the model's predicted outputs, the ground truth labels, 
    and the error between the two, allowing the user to visually assess the model's performance.

FUNCTIONS 

createPaddedBatch: 
    This function takes as argument a Batch of structures in Cells 
    in string format for the input and array format for the output
    and return X,T as images with Padding and array of dimension pre-padding
CSV2ImageCellBatch:
    This function takes as argument a Batch of structures in Cells
    in string format for the input and array format for the output
    and return X,T as images in a Cell Structure
MatriceT:
    This function takes as input a cell array of strings "coll", where each
    string is a number represented in string format, and returns a logical
    matrix "r".
outputMatrix:
    This function takes as input a matrix X and returns a binary matrix out, 
    where each row corresponds to the index of the maximum value in the 
    corresponding column of X.
padding:
    This function calculates the maximum length of the input sequences
    in the given cell array of ImageCellBatch objects.
RNA2Net:
    The function generates a 3D tensor using the Tensor8 function from the 
    input RNA sequence, which is then passed through the net using the 
    forward function to obtain a tensor containing output probabilities.
Tensor8:
    This function takes as argument a string representing an RNA Primary
    structure and return an LxLx8 Tensor representing possible pairings
    of the Nucleotids inside the RNA
       Layers:
          1: Invalid Pairing
          2: Potential unpaired
          3: AU possibile pairing
          4: UA possibile pairing
          5: UG possibile pairing
          6: GU possibile pairing
          7: GC possibile pairing
          8: CG possibile pairing

DATASET STRUCTURE 

Each dataset has three field:
    - train: 
        contain the train set subdivided in:
            input: strings of RNA sequences
            output: arrays of pairings numbers
            size: array of RNA sequences size
    - test: 
        contain the test set subdivided in:
            input: strings of RNA sequences
            output: arrays of pairings numbers
            size: array of RNA sequences size
    - name:
        contain the name of the dataset


