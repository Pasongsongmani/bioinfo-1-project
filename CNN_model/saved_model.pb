??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
?
,model_embed_cls_114/embedding_114/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,model_embed_cls_114/embedding_114/embeddings
?
@model_embed_cls_114/embedding_114/embeddings/Read/ReadVariableOpReadVariableOp,model_embed_cls_114/embedding_114/embeddings*
_output_shapes

:*
dtype0
?
%model_embed_cls_114/conv2d_178/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%model_embed_cls_114/conv2d_178/kernel
?
9model_embed_cls_114/conv2d_178/kernel/Read/ReadVariableOpReadVariableOp%model_embed_cls_114/conv2d_178/kernel*&
_output_shapes
: *
dtype0
?
#model_embed_cls_114/conv2d_178/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#model_embed_cls_114/conv2d_178/bias
?
7model_embed_cls_114/conv2d_178/bias/Read/ReadVariableOpReadVariableOp#model_embed_cls_114/conv2d_178/bias*
_output_shapes
: *
dtype0
?
1model_embed_cls_114/batch_normalization_130/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31model_embed_cls_114/batch_normalization_130/gamma
?
Emodel_embed_cls_114/batch_normalization_130/gamma/Read/ReadVariableOpReadVariableOp1model_embed_cls_114/batch_normalization_130/gamma*
_output_shapes
: *
dtype0
?
0model_embed_cls_114/batch_normalization_130/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *A
shared_name20model_embed_cls_114/batch_normalization_130/beta
?
Dmodel_embed_cls_114/batch_normalization_130/beta/Read/ReadVariableOpReadVariableOp0model_embed_cls_114/batch_normalization_130/beta*
_output_shapes
: *
dtype0
?
7model_embed_cls_114/batch_normalization_130/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97model_embed_cls_114/batch_normalization_130/moving_mean
?
Kmodel_embed_cls_114/batch_normalization_130/moving_mean/Read/ReadVariableOpReadVariableOp7model_embed_cls_114/batch_normalization_130/moving_mean*
_output_shapes
: *
dtype0
?
;model_embed_cls_114/batch_normalization_130/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *L
shared_name=;model_embed_cls_114/batch_normalization_130/moving_variance
?
Omodel_embed_cls_114/batch_normalization_130/moving_variance/Read/ReadVariableOpReadVariableOp;model_embed_cls_114/batch_normalization_130/moving_variance*
_output_shapes
: *
dtype0
?
$model_embed_cls_114/dense_115/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$model_embed_cls_114/dense_115/kernel
?
8model_embed_cls_114/dense_115/kernel/Read/ReadVariableOpReadVariableOp$model_embed_cls_114/dense_115/kernel*
_output_shapes
:	?*
dtype0
?
"model_embed_cls_114/dense_115/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"model_embed_cls_114/dense_115/bias
?
6model_embed_cls_114/dense_115/bias/Read/ReadVariableOpReadVariableOp"model_embed_cls_114/dense_115/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

NoOpNoOp
?:
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?9
value?9B?9 B?9
?
	embed

conv2d
bnrm
drop
pool
	lrelu
flatten
	dense
	softmax

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses*
?
"axis
	#gamma
$beta
%moving_mean
&moving_variance
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses*
?
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1_random_generator
2__call__
*3&call_and_return_all_conditional_losses* 
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
?

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
?
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 
:
Titer
	Udecay
Vlearning_rate
Wmomentum*
C
0
1
2
#3
$4
%5
&6
F7
G8*
5
0
1
2
#3
$4
F5
G6*
* 
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

]serving_default* 
qk
VARIABLE_VALUE,model_embed_cls_114/embedding_114/embeddings+embed/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 
?
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
ga
VARIABLE_VALUE%model_embed_cls_114/conv2d_178/kernel(conv2d/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#model_embed_cls_114/conv2d_178/bias&conv2d/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*
* 
* 
* 
pj
VARIABLE_VALUE1model_embed_cls_114/batch_normalization_130/gamma%bnrm/gamma/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE0model_embed_cls_114/batch_normalization_130/beta$bnrm/beta/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE7model_embed_cls_114/batch_normalization_130/moving_mean+bnrm/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE;model_embed_cls_114/batch_normalization_130/moving_variance/bnrm/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
#0
$1
%2
&3*

#0
$1*
* 
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
-	variables
.trainable_variables
/regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 
* 
* 
e_
VARIABLE_VALUE$model_embed_cls_114/dense_115/kernel'dense/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE"model_embed_cls_114/dense_115/bias%dense/bias/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

F0
G1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*
C
0
1
2
3
4
5
6
7
	8*

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

%0
&1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1,model_embed_cls_114/embedding_114/embeddings%model_embed_cls_114/conv2d_178/kernel#model_embed_cls_114/conv2d_178/bias1model_embed_cls_114/batch_normalization_130/gamma0model_embed_cls_114/batch_normalization_130/beta7model_embed_cls_114/batch_normalization_130/moving_mean;model_embed_cls_114/batch_normalization_130/moving_variance$model_embed_cls_114/dense_115/kernel"model_embed_cls_114/dense_115/bias*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1957661
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename@model_embed_cls_114/embedding_114/embeddings/Read/ReadVariableOp9model_embed_cls_114/conv2d_178/kernel/Read/ReadVariableOp7model_embed_cls_114/conv2d_178/bias/Read/ReadVariableOpEmodel_embed_cls_114/batch_normalization_130/gamma/Read/ReadVariableOpDmodel_embed_cls_114/batch_normalization_130/beta/Read/ReadVariableOpKmodel_embed_cls_114/batch_normalization_130/moving_mean/Read/ReadVariableOpOmodel_embed_cls_114/batch_normalization_130/moving_variance/Read/ReadVariableOp8model_embed_cls_114/dense_115/kernel/Read/ReadVariableOp6model_embed_cls_114/dense_115/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_1957919
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename,model_embed_cls_114/embedding_114/embeddings%model_embed_cls_114/conv2d_178/kernel#model_embed_cls_114/conv2d_178/bias1model_embed_cls_114/batch_normalization_130/gamma0model_embed_cls_114/batch_normalization_130/beta7model_embed_cls_114/batch_normalization_130/moving_mean;model_embed_cls_114/batch_normalization_130/moving_variance$model_embed_cls_114/dense_115/kernel"model_embed_cls_114/dense_115/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_1957980ٖ
?

?
5__inference_model_embed_cls_114_layer_call_fn_1957427
input_1	
unknown:#
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6:	?
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957383o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?

?
5__inference_model_embed_cls_114_layer_call_fn_1957520

inputs	
unknown:#
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6:	?
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957235o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957118

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?,
?
 __inference__traced_save_1957919
file_prefixK
Gsavev2_model_embed_cls_114_embedding_114_embeddings_read_readvariableopD
@savev2_model_embed_cls_114_conv2d_178_kernel_read_readvariableopB
>savev2_model_embed_cls_114_conv2d_178_bias_read_readvariableopP
Lsavev2_model_embed_cls_114_batch_normalization_130_gamma_read_readvariableopO
Ksavev2_model_embed_cls_114_batch_normalization_130_beta_read_readvariableopV
Rsavev2_model_embed_cls_114_batch_normalization_130_moving_mean_read_readvariableopZ
Vsavev2_model_embed_cls_114_batch_normalization_130_moving_variance_read_readvariableopC
?savev2_model_embed_cls_114_dense_115_kernel_read_readvariableopA
=savev2_model_embed_cls_114_dense_115_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B+embed/embeddings/.ATTRIBUTES/VARIABLE_VALUEB(conv2d/kernel/.ATTRIBUTES/VARIABLE_VALUEB&conv2d/bias/.ATTRIBUTES/VARIABLE_VALUEB%bnrm/gamma/.ATTRIBUTES/VARIABLE_VALUEB$bnrm/beta/.ATTRIBUTES/VARIABLE_VALUEB+bnrm/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB/bnrm/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B ?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Gsavev2_model_embed_cls_114_embedding_114_embeddings_read_readvariableop@savev2_model_embed_cls_114_conv2d_178_kernel_read_readvariableop>savev2_model_embed_cls_114_conv2d_178_bias_read_readvariableopLsavev2_model_embed_cls_114_batch_normalization_130_gamma_read_readvariableopKsavev2_model_embed_cls_114_batch_normalization_130_beta_read_readvariableopRsavev2_model_embed_cls_114_batch_normalization_130_moving_mean_read_readvariableopVsavev2_model_embed_cls_114_batch_normalization_130_moving_variance_read_readvariableop?savev2_model_embed_cls_114_dense_115_kernel_read_readvariableop=savev2_model_embed_cls_114_dense_115_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 * 
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*r
_input_shapesa
_: :: : : : : : :	?:: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	?: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
F__inference_dense_115_layer_call_and_return_conditional_losses_1957835

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?G
?
#__inference__traced_restore_1957980
file_prefixO
=assignvariableop_model_embed_cls_114_embedding_114_embeddings:R
8assignvariableop_1_model_embed_cls_114_conv2d_178_kernel: D
6assignvariableop_2_model_embed_cls_114_conv2d_178_bias: R
Dassignvariableop_3_model_embed_cls_114_batch_normalization_130_gamma: Q
Cassignvariableop_4_model_embed_cls_114_batch_normalization_130_beta: X
Jassignvariableop_5_model_embed_cls_114_batch_normalization_130_moving_mean: \
Nassignvariableop_6_model_embed_cls_114_batch_normalization_130_moving_variance: J
7assignvariableop_7_model_embed_cls_114_dense_115_kernel:	?C
5assignvariableop_8_model_embed_cls_114_dense_115_bias:%
assignvariableop_9_sgd_iter:	 '
assignvariableop_10_sgd_decay: /
%assignvariableop_11_sgd_learning_rate: *
 assignvariableop_12_sgd_momentum: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: 
identity_18??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B+embed/embeddings/.ATTRIBUTES/VARIABLE_VALUEB(conv2d/kernel/.ATTRIBUTES/VARIABLE_VALUEB&conv2d/bias/.ATTRIBUTES/VARIABLE_VALUEB%bnrm/gamma/.ATTRIBUTES/VARIABLE_VALUEB$bnrm/beta/.ATTRIBUTES/VARIABLE_VALUEB+bnrm/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB/bnrm/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp=assignvariableop_model_embed_cls_114_embedding_114_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp8assignvariableop_1_model_embed_cls_114_conv2d_178_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp6assignvariableop_2_model_embed_cls_114_conv2d_178_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpDassignvariableop_3_model_embed_cls_114_batch_normalization_130_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpCassignvariableop_4_model_embed_cls_114_batch_normalization_130_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpJassignvariableop_5_model_embed_cls_114_batch_normalization_130_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpNassignvariableop_6_model_embed_cls_114_batch_normalization_130_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp7assignvariableop_7_model_embed_cls_114_dense_115_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp5assignvariableop_8_model_embed_cls_114_dense_115_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_sgd_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp%assignvariableop_11_sgd_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp assignvariableop_12_sgd_momentumIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_17Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_18IdentityIdentity_17:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_18Identity_18:output:0*7
_input_shapes&
$: : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

?
5__inference_model_embed_cls_114_layer_call_fn_1957256
input_1	
unknown:#
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6:	?
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957235o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?	
?
9__inference_batch_normalization_130_layer_call_fn_1957722

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957118?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957740

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
J__inference_embedding_114_layer_call_and_return_conditional_losses_1957157

inputs	*
embedding_lookup_1957151:
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_1957151inputs*
Tindices0	*+
_class!
loc:@embedding_lookup/1957151*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1957151*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?+
?
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957383

inputs	'
embedding_114_1957353:,
conv2d_178_1957358:  
conv2d_178_1957360: -
batch_normalization_130_1957363: -
batch_normalization_130_1957365: -
batch_normalization_130_1957367: -
batch_normalization_130_1957369: $
dense_115_1957376:	?
dense_115_1957378:
identity??/batch_normalization_130/StatefulPartitionedCall?"conv2d_178/StatefulPartitionedCall?!dense_115/StatefulPartitionedCall?"dropout_78/StatefulPartitionedCall?%embedding_114/StatefulPartitionedCall?
%embedding_114/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_114_1957353*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_embedding_114_layer_call_and_return_conditional_losses_1957157Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????

ExpandDims
ExpandDims.embedding_114/StatefulPartitionedCall:output:0ExpandDims/dim:output:0*
T0*/
_output_shapes
:??????????
"conv2d_178/StatefulPartitionedCallStatefulPartitionedCallExpandDims:output:0conv2d_178_1957358conv2d_178_1957360*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_178_layer_call_and_return_conditional_losses_1957173?
/batch_normalization_130/StatefulPartitionedCallStatefulPartitionedCall+conv2d_178/StatefulPartitionedCall:output:0batch_normalization_130_1957363batch_normalization_130_1957365batch_normalization_130_1957367batch_normalization_130_1957369*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957118?
leaky_re_lu_129/PartitionedCallPartitionedCall8batch_normalization_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_129_layer_call_and_return_conditional_losses_1957193?
 max_pooling2d_57/PartitionedCallPartitionedCall(leaky_re_lu_129/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_1957138?
"dropout_78/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957298?
flatten_115/PartitionedCallPartitionedCall+dropout_78/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_flatten_115_layer_call_and_return_conditional_losses_1957209?
!dense_115/StatefulPartitionedCallStatefulPartitionedCall$flatten_115/PartitionedCall:output:0dense_115_1957376dense_115_1957378*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_115_layer_call_and_return_conditional_losses_1957221?
softmax_115/PartitionedCallPartitionedCall*dense_115/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_softmax_115_layer_call_and_return_conditional_losses_1957232s
IdentityIdentity$softmax_115/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^batch_normalization_130/StatefulPartitionedCall#^conv2d_178/StatefulPartitionedCall"^dense_115/StatefulPartitionedCall#^dropout_78/StatefulPartitionedCall&^embedding_114/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2b
/batch_normalization_130/StatefulPartitionedCall/batch_normalization_130/StatefulPartitionedCall2H
"conv2d_178/StatefulPartitionedCall"conv2d_178/StatefulPartitionedCall2F
!dense_115/StatefulPartitionedCall!dense_115/StatefulPartitionedCall2H
"dropout_78/StatefulPartitionedCall"dropout_78/StatefulPartitionedCall2N
%embedding_114/StatefulPartitionedCall%embedding_114/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
G__inference_conv2d_178_layer_call_and_return_conditional_losses_1957173

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_115_layer_call_and_return_conditional_losses_1957221

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

f
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957298

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
5__inference_model_embed_cls_114_layer_call_fn_1957543

inputs	
unknown:#
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6:	?
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957383o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
h
L__inference_leaky_re_lu_129_layer_call_and_return_conditional_losses_1957193

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:????????? *
alpha%???>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
d
H__inference_flatten_115_layer_call_and_return_conditional_losses_1957816

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957773

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

f
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957785

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:????????? a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
G__inference_conv2d_178_layer_call_and_return_conditional_losses_1957696

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
I
-__inference_softmax_115_layer_call_fn_1957840

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_softmax_115_layer_call_and_return_conditional_losses_1957232`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
H__inference_softmax_115_layer_call_and_return_conditional_losses_1957232

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_embedding_114_layer_call_fn_1957668

inputs	
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_embedding_114_layer_call_and_return_conditional_losses_1957157s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
M
1__inference_leaky_re_lu_129_layer_call_fn_1957800

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_129_layer_call_and_return_conditional_losses_1957193h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
d
H__inference_softmax_115_layer_call_and_return_conditional_losses_1957845

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
9__inference_batch_normalization_130_layer_call_fn_1957709

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957087?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
d
H__inference_flatten_115_layer_call_and_return_conditional_losses_1957209

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?C
?

"__inference__wrapped_model_1957065
input_1	L
:model_embed_cls_114_embedding_114_embedding_lookup_1957025:W
=model_embed_cls_114_conv2d_178_conv2d_readvariableop_resource: L
>model_embed_cls_114_conv2d_178_biasadd_readvariableop_resource: Q
Cmodel_embed_cls_114_batch_normalization_130_readvariableop_resource: S
Emodel_embed_cls_114_batch_normalization_130_readvariableop_1_resource: b
Tmodel_embed_cls_114_batch_normalization_130_fusedbatchnormv3_readvariableop_resource: d
Vmodel_embed_cls_114_batch_normalization_130_fusedbatchnormv3_readvariableop_1_resource: O
<model_embed_cls_114_dense_115_matmul_readvariableop_resource:	?K
=model_embed_cls_114_dense_115_biasadd_readvariableop_resource:
identity??Kmodel_embed_cls_114/batch_normalization_130/FusedBatchNormV3/ReadVariableOp?Mmodel_embed_cls_114/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1?:model_embed_cls_114/batch_normalization_130/ReadVariableOp?<model_embed_cls_114/batch_normalization_130/ReadVariableOp_1?5model_embed_cls_114/conv2d_178/BiasAdd/ReadVariableOp?4model_embed_cls_114/conv2d_178/Conv2D/ReadVariableOp?4model_embed_cls_114/dense_115/BiasAdd/ReadVariableOp?3model_embed_cls_114/dense_115/MatMul/ReadVariableOp?2model_embed_cls_114/embedding_114/embedding_lookup?
2model_embed_cls_114/embedding_114/embedding_lookupResourceGather:model_embed_cls_114_embedding_114_embedding_lookup_1957025input_1*
Tindices0	*M
_classC
A?loc:@model_embed_cls_114/embedding_114/embedding_lookup/1957025*+
_output_shapes
:?????????*
dtype0?
;model_embed_cls_114/embedding_114/embedding_lookup/IdentityIdentity;model_embed_cls_114/embedding_114/embedding_lookup:output:0*
T0*M
_classC
A?loc:@model_embed_cls_114/embedding_114/embedding_lookup/1957025*+
_output_shapes
:??????????
=model_embed_cls_114/embedding_114/embedding_lookup/Identity_1IdentityDmodel_embed_cls_114/embedding_114/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????m
"model_embed_cls_114/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
model_embed_cls_114/ExpandDims
ExpandDimsFmodel_embed_cls_114/embedding_114/embedding_lookup/Identity_1:output:0+model_embed_cls_114/ExpandDims/dim:output:0*
T0*/
_output_shapes
:??????????
4model_embed_cls_114/conv2d_178/Conv2D/ReadVariableOpReadVariableOp=model_embed_cls_114_conv2d_178_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
%model_embed_cls_114/conv2d_178/Conv2DConv2D'model_embed_cls_114/ExpandDims:output:0<model_embed_cls_114/conv2d_178/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
5model_embed_cls_114/conv2d_178/BiasAdd/ReadVariableOpReadVariableOp>model_embed_cls_114_conv2d_178_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
&model_embed_cls_114/conv2d_178/BiasAddBiasAdd.model_embed_cls_114/conv2d_178/Conv2D:output:0=model_embed_cls_114/conv2d_178/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
:model_embed_cls_114/batch_normalization_130/ReadVariableOpReadVariableOpCmodel_embed_cls_114_batch_normalization_130_readvariableop_resource*
_output_shapes
: *
dtype0?
<model_embed_cls_114/batch_normalization_130/ReadVariableOp_1ReadVariableOpEmodel_embed_cls_114_batch_normalization_130_readvariableop_1_resource*
_output_shapes
: *
dtype0?
Kmodel_embed_cls_114/batch_normalization_130/FusedBatchNormV3/ReadVariableOpReadVariableOpTmodel_embed_cls_114_batch_normalization_130_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
Mmodel_embed_cls_114/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVmodel_embed_cls_114_batch_normalization_130_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
<model_embed_cls_114/batch_normalization_130/FusedBatchNormV3FusedBatchNormV3/model_embed_cls_114/conv2d_178/BiasAdd:output:0Bmodel_embed_cls_114/batch_normalization_130/ReadVariableOp:value:0Dmodel_embed_cls_114/batch_normalization_130/ReadVariableOp_1:value:0Smodel_embed_cls_114/batch_normalization_130/FusedBatchNormV3/ReadVariableOp:value:0Umodel_embed_cls_114/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( ?
-model_embed_cls_114/leaky_re_lu_129/LeakyRelu	LeakyRelu@model_embed_cls_114/batch_normalization_130/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
alpha%???>?
,model_embed_cls_114/max_pooling2d_57/MaxPoolMaxPool;model_embed_cls_114/leaky_re_lu_129/LeakyRelu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
?
'model_embed_cls_114/dropout_78/IdentityIdentity5model_embed_cls_114/max_pooling2d_57/MaxPool:output:0*
T0*/
_output_shapes
:????????? v
%model_embed_cls_114/flatten_115/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'model_embed_cls_114/flatten_115/ReshapeReshape0model_embed_cls_114/dropout_78/Identity:output:0.model_embed_cls_114/flatten_115/Const:output:0*
T0*(
_output_shapes
:???????????
3model_embed_cls_114/dense_115/MatMul/ReadVariableOpReadVariableOp<model_embed_cls_114_dense_115_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
$model_embed_cls_114/dense_115/MatMulMatMul0model_embed_cls_114/flatten_115/Reshape:output:0;model_embed_cls_114/dense_115/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
4model_embed_cls_114/dense_115/BiasAdd/ReadVariableOpReadVariableOp=model_embed_cls_114_dense_115_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
%model_embed_cls_114/dense_115/BiasAddBiasAdd.model_embed_cls_114/dense_115/MatMul:product:0<model_embed_cls_114/dense_115/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_embed_cls_114/softmax_115/SoftmaxSoftmax.model_embed_cls_114/dense_115/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
IdentityIdentity1model_embed_cls_114/softmax_115/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOpL^model_embed_cls_114/batch_normalization_130/FusedBatchNormV3/ReadVariableOpN^model_embed_cls_114/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1;^model_embed_cls_114/batch_normalization_130/ReadVariableOp=^model_embed_cls_114/batch_normalization_130/ReadVariableOp_16^model_embed_cls_114/conv2d_178/BiasAdd/ReadVariableOp5^model_embed_cls_114/conv2d_178/Conv2D/ReadVariableOp5^model_embed_cls_114/dense_115/BiasAdd/ReadVariableOp4^model_embed_cls_114/dense_115/MatMul/ReadVariableOp3^model_embed_cls_114/embedding_114/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2?
Kmodel_embed_cls_114/batch_normalization_130/FusedBatchNormV3/ReadVariableOpKmodel_embed_cls_114/batch_normalization_130/FusedBatchNormV3/ReadVariableOp2?
Mmodel_embed_cls_114/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1Mmodel_embed_cls_114/batch_normalization_130/FusedBatchNormV3/ReadVariableOp_12x
:model_embed_cls_114/batch_normalization_130/ReadVariableOp:model_embed_cls_114/batch_normalization_130/ReadVariableOp2|
<model_embed_cls_114/batch_normalization_130/ReadVariableOp_1<model_embed_cls_114/batch_normalization_130/ReadVariableOp_12n
5model_embed_cls_114/conv2d_178/BiasAdd/ReadVariableOp5model_embed_cls_114/conv2d_178/BiasAdd/ReadVariableOp2l
4model_embed_cls_114/conv2d_178/Conv2D/ReadVariableOp4model_embed_cls_114/conv2d_178/Conv2D/ReadVariableOp2l
4model_embed_cls_114/dense_115/BiasAdd/ReadVariableOp4model_embed_cls_114/dense_115/BiasAdd/ReadVariableOp2j
3model_embed_cls_114/dense_115/MatMul/ReadVariableOp3model_embed_cls_114/dense_115/MatMul/ReadVariableOp2h
2model_embed_cls_114/embedding_114/embedding_lookup2model_embed_cls_114/embedding_114/embedding_lookup:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
e
,__inference_dropout_78_layer_call_fn_1957768

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957298w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_57_layer_call_fn_1957790

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_1957138?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?)
?
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957460
input_1	'
embedding_114_1957430:,
conv2d_178_1957435:  
conv2d_178_1957437: -
batch_normalization_130_1957440: -
batch_normalization_130_1957442: -
batch_normalization_130_1957444: -
batch_normalization_130_1957446: $
dense_115_1957453:	?
dense_115_1957455:
identity??/batch_normalization_130/StatefulPartitionedCall?"conv2d_178/StatefulPartitionedCall?!dense_115/StatefulPartitionedCall?%embedding_114/StatefulPartitionedCall?
%embedding_114/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_114_1957430*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_embedding_114_layer_call_and_return_conditional_losses_1957157Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????

ExpandDims
ExpandDims.embedding_114/StatefulPartitionedCall:output:0ExpandDims/dim:output:0*
T0*/
_output_shapes
:??????????
"conv2d_178/StatefulPartitionedCallStatefulPartitionedCallExpandDims:output:0conv2d_178_1957435conv2d_178_1957437*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_178_layer_call_and_return_conditional_losses_1957173?
/batch_normalization_130/StatefulPartitionedCallStatefulPartitionedCall+conv2d_178/StatefulPartitionedCall:output:0batch_normalization_130_1957440batch_normalization_130_1957442batch_normalization_130_1957444batch_normalization_130_1957446*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957087?
leaky_re_lu_129/PartitionedCallPartitionedCall8batch_normalization_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_129_layer_call_and_return_conditional_losses_1957193?
 max_pooling2d_57/PartitionedCallPartitionedCall(leaky_re_lu_129/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_1957138?
dropout_78/PartitionedCallPartitionedCall)max_pooling2d_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957201?
flatten_115/PartitionedCallPartitionedCall#dropout_78/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_flatten_115_layer_call_and_return_conditional_losses_1957209?
!dense_115/StatefulPartitionedCallStatefulPartitionedCall$flatten_115/PartitionedCall:output:0dense_115_1957453dense_115_1957455*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_115_layer_call_and_return_conditional_losses_1957221?
softmax_115/PartitionedCallPartitionedCall*dense_115/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_softmax_115_layer_call_and_return_conditional_losses_1957232s
IdentityIdentity$softmax_115/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^batch_normalization_130/StatefulPartitionedCall#^conv2d_178/StatefulPartitionedCall"^dense_115/StatefulPartitionedCall&^embedding_114/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2b
/batch_normalization_130/StatefulPartitionedCall/batch_normalization_130/StatefulPartitionedCall2H
"conv2d_178/StatefulPartitionedCall"conv2d_178/StatefulPartitionedCall2F
!dense_115/StatefulPartitionedCall!dense_115/StatefulPartitionedCall2N
%embedding_114/StatefulPartitionedCall%embedding_114/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
J__inference_embedding_114_layer_call_and_return_conditional_losses_1957677

inputs	*
embedding_lookup_1957671:
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_1957671inputs*
Tindices0	*+
_class!
loc:@embedding_lookup/1957671*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1957671*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957758

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957087

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_1957795

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_1957138

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?B
?	
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957636

inputs	8
&embedding_114_embedding_lookup_1957589:C
)conv2d_178_conv2d_readvariableop_resource: 8
*conv2d_178_biasadd_readvariableop_resource: =
/batch_normalization_130_readvariableop_resource: ?
1batch_normalization_130_readvariableop_1_resource: N
@batch_normalization_130_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_130_fusedbatchnormv3_readvariableop_1_resource: ;
(dense_115_matmul_readvariableop_resource:	?7
)dense_115_biasadd_readvariableop_resource:
identity??&batch_normalization_130/AssignNewValue?(batch_normalization_130/AssignNewValue_1?7batch_normalization_130/FusedBatchNormV3/ReadVariableOp?9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_130/ReadVariableOp?(batch_normalization_130/ReadVariableOp_1?!conv2d_178/BiasAdd/ReadVariableOp? conv2d_178/Conv2D/ReadVariableOp? dense_115/BiasAdd/ReadVariableOp?dense_115/MatMul/ReadVariableOp?embedding_114/embedding_lookup?
embedding_114/embedding_lookupResourceGather&embedding_114_embedding_lookup_1957589inputs*
Tindices0	*9
_class/
-+loc:@embedding_114/embedding_lookup/1957589*+
_output_shapes
:?????????*
dtype0?
'embedding_114/embedding_lookup/IdentityIdentity'embedding_114/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_114/embedding_lookup/1957589*+
_output_shapes
:??????????
)embedding_114/embedding_lookup/Identity_1Identity0embedding_114/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????

ExpandDims
ExpandDims2embedding_114/embedding_lookup/Identity_1:output:0ExpandDims/dim:output:0*
T0*/
_output_shapes
:??????????
 conv2d_178/Conv2D/ReadVariableOpReadVariableOp)conv2d_178_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_178/Conv2DConv2DExpandDims:output:0(conv2d_178/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
!conv2d_178/BiasAdd/ReadVariableOpReadVariableOp*conv2d_178_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_178/BiasAddBiasAddconv2d_178/Conv2D:output:0)conv2d_178/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
&batch_normalization_130/ReadVariableOpReadVariableOp/batch_normalization_130_readvariableop_resource*
_output_shapes
: *
dtype0?
(batch_normalization_130/ReadVariableOp_1ReadVariableOp1batch_normalization_130_readvariableop_1_resource*
_output_shapes
: *
dtype0?
7batch_normalization_130/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_130_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_130_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
(batch_normalization_130/FusedBatchNormV3FusedBatchNormV3conv2d_178/BiasAdd:output:0.batch_normalization_130/ReadVariableOp:value:00batch_normalization_130/ReadVariableOp_1:value:0?batch_normalization_130/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_130/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
&batch_normalization_130/AssignNewValueAssignVariableOp@batch_normalization_130_fusedbatchnormv3_readvariableop_resource5batch_normalization_130/FusedBatchNormV3:batch_mean:08^batch_normalization_130/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
(batch_normalization_130/AssignNewValue_1AssignVariableOpBbatch_normalization_130_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_130/FusedBatchNormV3:batch_variance:0:^batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0?
leaky_re_lu_129/LeakyRelu	LeakyRelu,batch_normalization_130/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
alpha%???>?
max_pooling2d_57/MaxPoolMaxPool'leaky_re_lu_129/LeakyRelu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
]
dropout_78/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_78/dropout/MulMul!max_pooling2d_57/MaxPool:output:0!dropout_78/dropout/Const:output:0*
T0*/
_output_shapes
:????????? i
dropout_78/dropout/ShapeShape!max_pooling2d_57/MaxPool:output:0*
T0*
_output_shapes
:?
/dropout_78/dropout/random_uniform/RandomUniformRandomUniform!dropout_78/dropout/Shape:output:0*
T0*/
_output_shapes
:????????? *
dtype0f
!dropout_78/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_78/dropout/GreaterEqualGreaterEqual8dropout_78/dropout/random_uniform/RandomUniform:output:0*dropout_78/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:????????? ?
dropout_78/dropout/CastCast#dropout_78/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:????????? ?
dropout_78/dropout/Mul_1Muldropout_78/dropout/Mul:z:0dropout_78/dropout/Cast:y:0*
T0*/
_output_shapes
:????????? b
flatten_115/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_115/ReshapeReshapedropout_78/dropout/Mul_1:z:0flatten_115/Const:output:0*
T0*(
_output_shapes
:???????????
dense_115/MatMul/ReadVariableOpReadVariableOp(dense_115_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_115/MatMulMatMulflatten_115/Reshape:output:0'dense_115/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_115/BiasAdd/ReadVariableOpReadVariableOp)dense_115_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_115/BiasAddBiasAdddense_115/MatMul:product:0(dense_115/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
softmax_115/SoftmaxSoftmaxdense_115/BiasAdd:output:0*
T0*'
_output_shapes
:?????????l
IdentityIdentitysoftmax_115/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp'^batch_normalization_130/AssignNewValue)^batch_normalization_130/AssignNewValue_18^batch_normalization_130/FusedBatchNormV3/ReadVariableOp:^batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_130/ReadVariableOp)^batch_normalization_130/ReadVariableOp_1"^conv2d_178/BiasAdd/ReadVariableOp!^conv2d_178/Conv2D/ReadVariableOp!^dense_115/BiasAdd/ReadVariableOp ^dense_115/MatMul/ReadVariableOp^embedding_114/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2P
&batch_normalization_130/AssignNewValue&batch_normalization_130/AssignNewValue2T
(batch_normalization_130/AssignNewValue_1(batch_normalization_130/AssignNewValue_12r
7batch_normalization_130/FusedBatchNormV3/ReadVariableOp7batch_normalization_130/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_19batch_normalization_130/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_130/ReadVariableOp&batch_normalization_130/ReadVariableOp2T
(batch_normalization_130/ReadVariableOp_1(batch_normalization_130/ReadVariableOp_12F
!conv2d_178/BiasAdd/ReadVariableOp!conv2d_178/BiasAdd/ReadVariableOp2D
 conv2d_178/Conv2D/ReadVariableOp conv2d_178/Conv2D/ReadVariableOp2D
 dense_115/BiasAdd/ReadVariableOp dense_115/BiasAdd/ReadVariableOp2B
dense_115/MatMul/ReadVariableOpdense_115/MatMul/ReadVariableOp2@
embedding_114/embedding_lookupembedding_114/embedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_78_layer_call_fn_1957763

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957201h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
+__inference_dense_115_layer_call_fn_1957825

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_115_layer_call_and_return_conditional_losses_1957221o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_178_layer_call_fn_1957686

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_178_layer_call_and_return_conditional_losses_1957173w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
h
L__inference_leaky_re_lu_129_layer_call_and_return_conditional_losses_1957805

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:????????? *
alpha%???>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
I
-__inference_flatten_115_layer_call_fn_1957810

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_flatten_115_layer_call_and_return_conditional_losses_1957209a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
%__inference_signature_wrapper_1957661
input_1	
unknown:#
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6:	?
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_1957065o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
e
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957201

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:????????? c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?+
?
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957493
input_1	'
embedding_114_1957463:,
conv2d_178_1957468:  
conv2d_178_1957470: -
batch_normalization_130_1957473: -
batch_normalization_130_1957475: -
batch_normalization_130_1957477: -
batch_normalization_130_1957479: $
dense_115_1957486:	?
dense_115_1957488:
identity??/batch_normalization_130/StatefulPartitionedCall?"conv2d_178/StatefulPartitionedCall?!dense_115/StatefulPartitionedCall?"dropout_78/StatefulPartitionedCall?%embedding_114/StatefulPartitionedCall?
%embedding_114/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_114_1957463*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_embedding_114_layer_call_and_return_conditional_losses_1957157Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????

ExpandDims
ExpandDims.embedding_114/StatefulPartitionedCall:output:0ExpandDims/dim:output:0*
T0*/
_output_shapes
:??????????
"conv2d_178/StatefulPartitionedCallStatefulPartitionedCallExpandDims:output:0conv2d_178_1957468conv2d_178_1957470*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_178_layer_call_and_return_conditional_losses_1957173?
/batch_normalization_130/StatefulPartitionedCallStatefulPartitionedCall+conv2d_178/StatefulPartitionedCall:output:0batch_normalization_130_1957473batch_normalization_130_1957475batch_normalization_130_1957477batch_normalization_130_1957479*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957118?
leaky_re_lu_129/PartitionedCallPartitionedCall8batch_normalization_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_129_layer_call_and_return_conditional_losses_1957193?
 max_pooling2d_57/PartitionedCallPartitionedCall(leaky_re_lu_129/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_1957138?
"dropout_78/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957298?
flatten_115/PartitionedCallPartitionedCall+dropout_78/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_flatten_115_layer_call_and_return_conditional_losses_1957209?
!dense_115/StatefulPartitionedCallStatefulPartitionedCall$flatten_115/PartitionedCall:output:0dense_115_1957486dense_115_1957488*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_115_layer_call_and_return_conditional_losses_1957221?
softmax_115/PartitionedCallPartitionedCall*dense_115/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_softmax_115_layer_call_and_return_conditional_losses_1957232s
IdentityIdentity$softmax_115/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^batch_normalization_130/StatefulPartitionedCall#^conv2d_178/StatefulPartitionedCall"^dense_115/StatefulPartitionedCall#^dropout_78/StatefulPartitionedCall&^embedding_114/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2b
/batch_normalization_130/StatefulPartitionedCall/batch_normalization_130/StatefulPartitionedCall2H
"conv2d_178/StatefulPartitionedCall"conv2d_178/StatefulPartitionedCall2F
!dense_115/StatefulPartitionedCall!dense_115/StatefulPartitionedCall2H
"dropout_78/StatefulPartitionedCall"dropout_78/StatefulPartitionedCall2N
%embedding_114/StatefulPartitionedCall%embedding_114/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?3
?
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957586

inputs	8
&embedding_114_embedding_lookup_1957546:C
)conv2d_178_conv2d_readvariableop_resource: 8
*conv2d_178_biasadd_readvariableop_resource: =
/batch_normalization_130_readvariableop_resource: ?
1batch_normalization_130_readvariableop_1_resource: N
@batch_normalization_130_fusedbatchnormv3_readvariableop_resource: P
Bbatch_normalization_130_fusedbatchnormv3_readvariableop_1_resource: ;
(dense_115_matmul_readvariableop_resource:	?7
)dense_115_biasadd_readvariableop_resource:
identity??7batch_normalization_130/FusedBatchNormV3/ReadVariableOp?9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_130/ReadVariableOp?(batch_normalization_130/ReadVariableOp_1?!conv2d_178/BiasAdd/ReadVariableOp? conv2d_178/Conv2D/ReadVariableOp? dense_115/BiasAdd/ReadVariableOp?dense_115/MatMul/ReadVariableOp?embedding_114/embedding_lookup?
embedding_114/embedding_lookupResourceGather&embedding_114_embedding_lookup_1957546inputs*
Tindices0	*9
_class/
-+loc:@embedding_114/embedding_lookup/1957546*+
_output_shapes
:?????????*
dtype0?
'embedding_114/embedding_lookup/IdentityIdentity'embedding_114/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_114/embedding_lookup/1957546*+
_output_shapes
:??????????
)embedding_114/embedding_lookup/Identity_1Identity0embedding_114/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????

ExpandDims
ExpandDims2embedding_114/embedding_lookup/Identity_1:output:0ExpandDims/dim:output:0*
T0*/
_output_shapes
:??????????
 conv2d_178/Conv2D/ReadVariableOpReadVariableOp)conv2d_178_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_178/Conv2DConv2DExpandDims:output:0(conv2d_178/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
!conv2d_178/BiasAdd/ReadVariableOpReadVariableOp*conv2d_178_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_178/BiasAddBiasAddconv2d_178/Conv2D:output:0)conv2d_178/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
&batch_normalization_130/ReadVariableOpReadVariableOp/batch_normalization_130_readvariableop_resource*
_output_shapes
: *
dtype0?
(batch_normalization_130/ReadVariableOp_1ReadVariableOp1batch_normalization_130_readvariableop_1_resource*
_output_shapes
: *
dtype0?
7batch_normalization_130/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_130_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_130_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
(batch_normalization_130/FusedBatchNormV3FusedBatchNormV3conv2d_178/BiasAdd:output:0.batch_normalization_130/ReadVariableOp:value:00batch_normalization_130/ReadVariableOp_1:value:0?batch_normalization_130/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_130/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( ?
leaky_re_lu_129/LeakyRelu	LeakyRelu,batch_normalization_130/FusedBatchNormV3:y:0*/
_output_shapes
:????????? *
alpha%???>?
max_pooling2d_57/MaxPoolMaxPool'leaky_re_lu_129/LeakyRelu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingSAME*
strides
|
dropout_78/IdentityIdentity!max_pooling2d_57/MaxPool:output:0*
T0*/
_output_shapes
:????????? b
flatten_115/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_115/ReshapeReshapedropout_78/Identity:output:0flatten_115/Const:output:0*
T0*(
_output_shapes
:???????????
dense_115/MatMul/ReadVariableOpReadVariableOp(dense_115_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_115/MatMulMatMulflatten_115/Reshape:output:0'dense_115/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_115/BiasAdd/ReadVariableOpReadVariableOp)dense_115_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_115/BiasAddBiasAdddense_115/MatMul:product:0(dense_115/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
softmax_115/SoftmaxSoftmaxdense_115/BiasAdd:output:0*
T0*'
_output_shapes
:?????????l
IdentityIdentitysoftmax_115/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp8^batch_normalization_130/FusedBatchNormV3/ReadVariableOp:^batch_normalization_130/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_130/ReadVariableOp)^batch_normalization_130/ReadVariableOp_1"^conv2d_178/BiasAdd/ReadVariableOp!^conv2d_178/Conv2D/ReadVariableOp!^dense_115/BiasAdd/ReadVariableOp ^dense_115/MatMul/ReadVariableOp^embedding_114/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2r
7batch_normalization_130/FusedBatchNormV3/ReadVariableOp7batch_normalization_130/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_130/FusedBatchNormV3/ReadVariableOp_19batch_normalization_130/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_130/ReadVariableOp&batch_normalization_130/ReadVariableOp2T
(batch_normalization_130/ReadVariableOp_1(batch_normalization_130/ReadVariableOp_12F
!conv2d_178/BiasAdd/ReadVariableOp!conv2d_178/BiasAdd/ReadVariableOp2D
 conv2d_178/Conv2D/ReadVariableOp conv2d_178/Conv2D/ReadVariableOp2D
 dense_115/BiasAdd/ReadVariableOp dense_115/BiasAdd/ReadVariableOp2B
dense_115/MatMul/ReadVariableOpdense_115/MatMul/ReadVariableOp2@
embedding_114/embedding_lookupembedding_114/embedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?)
?
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957235

inputs	'
embedding_114_1957158:,
conv2d_178_1957174:  
conv2d_178_1957176: -
batch_normalization_130_1957179: -
batch_normalization_130_1957181: -
batch_normalization_130_1957183: -
batch_normalization_130_1957185: $
dense_115_1957222:	?
dense_115_1957224:
identity??/batch_normalization_130/StatefulPartitionedCall?"conv2d_178/StatefulPartitionedCall?!dense_115/StatefulPartitionedCall?%embedding_114/StatefulPartitionedCall?
%embedding_114/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_114_1957158*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_embedding_114_layer_call_and_return_conditional_losses_1957157Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????

ExpandDims
ExpandDims.embedding_114/StatefulPartitionedCall:output:0ExpandDims/dim:output:0*
T0*/
_output_shapes
:??????????
"conv2d_178/StatefulPartitionedCallStatefulPartitionedCallExpandDims:output:0conv2d_178_1957174conv2d_178_1957176*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_178_layer_call_and_return_conditional_losses_1957173?
/batch_normalization_130/StatefulPartitionedCallStatefulPartitionedCall+conv2d_178/StatefulPartitionedCall:output:0batch_normalization_130_1957179batch_normalization_130_1957181batch_normalization_130_1957183batch_normalization_130_1957185*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957087?
leaky_re_lu_129/PartitionedCallPartitionedCall8batch_normalization_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_129_layer_call_and_return_conditional_losses_1957193?
 max_pooling2d_57/PartitionedCallPartitionedCall(leaky_re_lu_129/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_1957138?
dropout_78/PartitionedCallPartitionedCall)max_pooling2d_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957201?
flatten_115/PartitionedCallPartitionedCall#dropout_78/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_flatten_115_layer_call_and_return_conditional_losses_1957209?
!dense_115/StatefulPartitionedCallStatefulPartitionedCall$flatten_115/PartitionedCall:output:0dense_115_1957222dense_115_1957224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_115_layer_call_and_return_conditional_losses_1957221?
softmax_115/PartitionedCallPartitionedCall*dense_115/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_softmax_115_layer_call_and_return_conditional_losses_1957232s
IdentityIdentity$softmax_115/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^batch_normalization_130/StatefulPartitionedCall#^conv2d_178/StatefulPartitionedCall"^dense_115/StatefulPartitionedCall&^embedding_114/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2b
/batch_normalization_130/StatefulPartitionedCall/batch_normalization_130/StatefulPartitionedCall2H
"conv2d_178/StatefulPartitionedCall"conv2d_178/StatefulPartitionedCall2F
!dense_115/StatefulPartitionedCall!dense_115/StatefulPartitionedCall2N
%embedding_114/StatefulPartitionedCall%embedding_114/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0	?????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ѣ
?
	embed

conv2d
bnrm
drop
pool
	lrelu
flatten
	dense
	softmax

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_model
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
?
"axis
	#gamma
$beta
%moving_mean
&moving_variance
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
?
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1_random_generator
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
?
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
I
Titer
	Udecay
Vlearning_rate
Wmomentum"
	optimizer
_
0
1
2
#3
$4
%5
&6
F7
G8"
trackable_list_wrapper
Q
0
1
2
#3
$4
F5
G6"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
5__inference_model_embed_cls_114_layer_call_fn_1957256
5__inference_model_embed_cls_114_layer_call_fn_1957520
5__inference_model_embed_cls_114_layer_call_fn_1957543
5__inference_model_embed_cls_114_layer_call_fn_1957427?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957586
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957636
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957460
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957493?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference__wrapped_model_1957065input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
]serving_default"
signature_map
>:<2,model_embed_cls_114/embedding_114/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_embedding_114_layer_call_fn_1957668?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_embedding_114_layer_call_and_return_conditional_losses_1957677?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?:= 2%model_embed_cls_114/conv2d_178/kernel
1:/ 2#model_embed_cls_114/conv2d_178/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
?2?
,__inference_conv2d_178_layer_call_fn_1957686?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv2d_178_layer_call_and_return_conditional_losses_1957696?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
?:= 21model_embed_cls_114/batch_normalization_130/gamma
>:< 20model_embed_cls_114/batch_normalization_130/beta
G:E  (27model_embed_cls_114/batch_normalization_130/moving_mean
K:I  (2;model_embed_cls_114/batch_normalization_130/moving_variance
<
#0
$1
%2
&3"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
?2?
9__inference_batch_normalization_130_layer_call_fn_1957709
9__inference_batch_normalization_130_layer_call_fn_1957722?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957740
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957758?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
-	variables
.trainable_variables
/regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
,__inference_dropout_78_layer_call_fn_1957763
,__inference_dropout_78_layer_call_fn_1957768?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957773
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957785?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_max_pooling2d_57_layer_call_fn_1957790?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_1957795?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_leaky_re_lu_129_layer_call_fn_1957800?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_leaky_re_lu_129_layer_call_and_return_conditional_losses_1957805?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_flatten_115_layer_call_fn_1957810?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_flatten_115_layer_call_and_return_conditional_losses_1957816?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
7:5	?2$model_embed_cls_114/dense_115/kernel
0:.2"model_embed_cls_114/dense_115/bias
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_dense_115_layer_call_fn_1957825?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_115_layer_call_and_return_conditional_losses_1957835?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_softmax_115_layer_call_fn_1957840?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_softmax_115_layer_call_and_return_conditional_losses_1957845?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
.
%0
&1"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
%__inference_signature_wrapper_1957661input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object?
"__inference__wrapped_model_1957065r	#$%&FG0?-
&?#
!?
input_1?????????	
? "3?0
.
output_1"?
output_1??????????
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957740?#$%&M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_batch_normalization_130_layer_call_and_return_conditional_losses_1957758?#$%&M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
9__inference_batch_normalization_130_layer_call_fn_1957709?#$%&M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
9__inference_batch_normalization_130_layer_call_fn_1957722?#$%&M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
G__inference_conv2d_178_layer_call_and_return_conditional_losses_1957696l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
,__inference_conv2d_178_layer_call_fn_1957686_7?4
-?*
(?%
inputs?????????
? " ?????????? ?
F__inference_dense_115_layer_call_and_return_conditional_losses_1957835]FG0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? 
+__inference_dense_115_layer_call_fn_1957825PFG0?-
&?#
!?
inputs??????????
? "???????????
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957773l;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
G__inference_dropout_78_layer_call_and_return_conditional_losses_1957785l;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
,__inference_dropout_78_layer_call_fn_1957763_;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
,__inference_dropout_78_layer_call_fn_1957768_;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
J__inference_embedding_114_layer_call_and_return_conditional_losses_1957677_/?,
%?"
 ?
inputs?????????	
? ")?&
?
0?????????
? ?
/__inference_embedding_114_layer_call_fn_1957668R/?,
%?"
 ?
inputs?????????	
? "???????????
H__inference_flatten_115_layer_call_and_return_conditional_losses_1957816a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????
? ?
-__inference_flatten_115_layer_call_fn_1957810T7?4
-?*
(?%
inputs????????? 
? "????????????
L__inference_leaky_re_lu_129_layer_call_and_return_conditional_losses_1957805h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
1__inference_leaky_re_lu_129_layer_call_fn_1957800[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
M__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_1957795?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_57_layer_call_fn_1957790?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957460h	#$%&FG4?1
*?'
!?
input_1?????????	
p 
? "%?"
?
0?????????
? ?
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957493h	#$%&FG4?1
*?'
!?
input_1?????????	
p
? "%?"
?
0?????????
? ?
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957586g	#$%&FG3?0
)?&
 ?
inputs?????????	
p 
? "%?"
?
0?????????
? ?
P__inference_model_embed_cls_114_layer_call_and_return_conditional_losses_1957636g	#$%&FG3?0
)?&
 ?
inputs?????????	
p
? "%?"
?
0?????????
? ?
5__inference_model_embed_cls_114_layer_call_fn_1957256[	#$%&FG4?1
*?'
!?
input_1?????????	
p 
? "???????????
5__inference_model_embed_cls_114_layer_call_fn_1957427[	#$%&FG4?1
*?'
!?
input_1?????????	
p
? "???????????
5__inference_model_embed_cls_114_layer_call_fn_1957520Z	#$%&FG3?0
)?&
 ?
inputs?????????	
p 
? "???????????
5__inference_model_embed_cls_114_layer_call_fn_1957543Z	#$%&FG3?0
)?&
 ?
inputs?????????	
p
? "???????????
%__inference_signature_wrapper_1957661}	#$%&FG;?8
? 
1?.
,
input_1!?
input_1?????????	"3?0
.
output_1"?
output_1??????????
H__inference_softmax_115_layer_call_and_return_conditional_losses_1957845\3?0
)?&
 ?
inputs?????????

 
? "%?"
?
0?????????
? ?
-__inference_softmax_115_layer_call_fn_1957840O3?0
)?&
 ?
inputs?????????

 
? "??????????