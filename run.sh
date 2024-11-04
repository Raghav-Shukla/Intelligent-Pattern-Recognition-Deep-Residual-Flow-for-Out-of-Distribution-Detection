# in folder : /Users/raghavshukla/Desktop/IPR_proj/Residual-Flow
# number 1 : activate the environment
source venv/bin/activate

# number 2 : pre-processing code; feature extraction
python Residual_flow_prepare.py --dataset cifar10 --net_type densenet ## preprocessing part

# number 3 : gaussian
python OOD_Generate_Mahanalobis.py --dataset cifar10 --net_type densenet ## this is the normal gaussian 

# number 4 : gmm
python OOD_Generate_Mahanalobis_modified.py --dataset cifar10 --net_type densenet ## this is for the gmm modifications