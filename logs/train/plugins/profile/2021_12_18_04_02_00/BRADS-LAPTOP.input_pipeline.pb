  *	??Q?/?@2E
Iterator::Root?fe?????!6???2K@)?h??????1?Zя??G@:Preprocessing2i
2Iterator::Root::Prefetch::MemoryCacheImpl::BatchV2??@j??!?e??qF@)???O????1E?r?.V:@:Preprocessing2r
;Iterator::Root::Prefetch::MemoryCacheImpl::BatchV2::Shuffle
{?"0?7??!2???1@)?'?y???1?s??A?%@:Preprocessing2
HIterator::Root::Prefetch::MemoryCacheImpl::BatchV2::Shuffle::TensorSlice
O>=?e???!.q??PV@)O>=?e???1.q??PV@:Preprocessing2O
Iterator::Root::Prefetch????K7??!/?	?r?@)????K7??1/?	?r?@:Preprocessing2`
)Iterator::Root::Prefetch::MemoryCacheImpl?_̖????!Gu???F@)?M)???}?1}?!?xg??:Preprocessing2\
%Iterator::Root::Prefetch::MemoryCache??????!?q??F@)?v????f?1?A???6??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysisk
unknownTNo step time measured. Therefore we cannot tell where the performance bottleneck is.no*noZno#You may skip the rest of this page.BZ
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown
  " * 2 : B J R Z b JCPU_ONLYb??No step marker observed and hence the step time is unknown. This may happen if (1) training steps are not instrumented (e.g., if you are not using Keras) or (2) the profiling duration is shorter than the step time. For (1), you need to add step instrumentation; for (2), you may try to profile longer.