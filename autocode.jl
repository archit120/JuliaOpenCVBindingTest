function Base.getproperty(m::ocl_Device, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ocl_Device, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function isNVidia(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_isNVidia(julia_to_cpp(cobj)))
end
isNVidia(cobj::Any; ) = isNVidia(cobj)

function maxClockFrequency(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_maxClockFrequency(julia_to_cpp(cobj)))
end
maxClockFrequency(cobj::Any; ) = maxClockFrequency(cobj)

function image3DMaxHeight(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_image3DMaxHeight(julia_to_cpp(cobj)))
end
image3DMaxHeight(cobj::Any; ) = image3DMaxHeight(cobj)

function maxWorkGroupSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_maxWorkGroupSize(julia_to_cpp(cobj)))
end
maxWorkGroupSize(cobj::Any; ) = maxWorkGroupSize(cobj)

function imageMaxBufferSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_imageMaxBufferSize(julia_to_cpp(cobj)))
end
imageMaxBufferSize(cobj::Any; ) = imageMaxBufferSize(cobj)

function driverVersion(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_driverVersion(julia_to_cpp(cobj)))
end
driverVersion(cobj::Any; ) = driverVersion(cobj)

function imageSupport(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_imageSupport(julia_to_cpp(cobj)))
end
imageSupport(cobj::Any; ) = imageSupport(cobj)

function OpenCLVersion(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_OpenCLVersion(julia_to_cpp(cobj)))
end
OpenCLVersion(cobj::Any; ) = OpenCLVersion(cobj)

function isIntel(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_isIntel(julia_to_cpp(cobj)))
end
isIntel(cobj::Any; ) = isIntel(cobj)

function singleFPConfig(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_singleFPConfig(julia_to_cpp(cobj)))
end
singleFPConfig(cobj::Any; ) = singleFPConfig(cobj)

function image2DMaxHeight(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_image2DMaxHeight(julia_to_cpp(cobj)))
end
image2DMaxHeight(cobj::Any; ) = image2DMaxHeight(cobj)

function doubleFPConfig(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_doubleFPConfig(julia_to_cpp(cobj)))
end
doubleFPConfig(cobj::Any; ) = doubleFPConfig(cobj)

function compilerAvailable(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_compilerAvailable(julia_to_cpp(cobj)))
end
compilerAvailable(cobj::Any; ) = compilerAvailable(cobj)

function nativeVectorWidthLong(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_nativeVectorWidthLong(julia_to_cpp(cobj)))
end
nativeVectorWidthLong(cobj::Any; ) = nativeVectorWidthLong(cobj)

function maxMemAllocSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_maxMemAllocSize(julia_to_cpp(cobj)))
end
maxMemAllocSize(cobj::Any; ) = maxMemAllocSize(cobj)

function preferredVectorWidthChar(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_preferredVectorWidthChar(julia_to_cpp(cobj)))
end
preferredVectorWidthChar(cobj::Any; ) = preferredVectorWidthChar(cobj)

function preferredVectorWidthFloat(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_preferredVectorWidthFloat(julia_to_cpp(cobj)))
end
preferredVectorWidthFloat(cobj::Any; ) = preferredVectorWidthFloat(cobj)

function vendorID(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_vendorID(julia_to_cpp(cobj)))
end
vendorID(cobj::Any; ) = vendorID(cobj)

function globalMemSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_globalMemSize(julia_to_cpp(cobj)))
end
globalMemSize(cobj::Any; ) = globalMemSize(cobj)

function nativeVectorWidthFloat(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_nativeVectorWidthFloat(julia_to_cpp(cobj)))
end
nativeVectorWidthFloat(cobj::Any; ) = nativeVectorWidthFloat(cobj)

function nativeVectorWidthShort(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_nativeVectorWidthShort(julia_to_cpp(cobj)))
end
nativeVectorWidthShort(cobj::Any; ) = nativeVectorWidthShort(cobj)

function image2DMaxWidth(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_image2DMaxWidth(julia_to_cpp(cobj)))
end
image2DMaxWidth(cobj::Any; ) = image2DMaxWidth(cobj)

function image3DMaxWidth(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_image3DMaxWidth(julia_to_cpp(cobj)))
end
image3DMaxWidth(cobj::Any; ) = image3DMaxWidth(cobj)

function maxWriteImageArgs(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_maxWriteImageArgs(julia_to_cpp(cobj)))
end
maxWriteImageArgs(cobj::Any; ) = maxWriteImageArgs(cobj)

function localMemSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_localMemSize(julia_to_cpp(cobj)))
end
localMemSize(cobj::Any; ) = localMemSize(cobj)

function hostUnifiedMemory(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_hostUnifiedMemory(julia_to_cpp(cobj)))
end
hostUnifiedMemory(cobj::Any; ) = hostUnifiedMemory(cobj)

function maxReadImageArgs(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_maxReadImageArgs(julia_to_cpp(cobj)))
end
maxReadImageArgs(cobj::Any; ) = maxReadImageArgs(cobj)

function version(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_version(julia_to_cpp(cobj)))
end
version(cobj::Any; ) = version(cobj)

function maxParameterSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_maxParameterSize(julia_to_cpp(cobj)))
end
maxParameterSize(cobj::Any; ) = maxParameterSize(cobj)

function globalMemCacheLineSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_globalMemCacheLineSize(julia_to_cpp(cobj)))
end
globalMemCacheLineSize(cobj::Any; ) = globalMemCacheLineSize(cobj)

function halfFPConfig(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_halfFPConfig(julia_to_cpp(cobj)))
end
halfFPConfig(cobj::Any; ) = halfFPConfig(cobj)

function type(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_type(julia_to_cpp(cobj)))
end
type(cobj::Any; ) = type(cobj)

function errorCorrectionSupport(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_errorCorrectionSupport(julia_to_cpp(cobj)))
end
errorCorrectionSupport(cobj::Any; ) = errorCorrectionSupport(cobj)

function intelSubgroupsSupport(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_intelSubgroupsSupport(julia_to_cpp(cobj)))
end
intelSubgroupsSupport(cobj::Any; ) = intelSubgroupsSupport(cobj)

function available(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_available(julia_to_cpp(cobj)))
end
available(cobj::Any; ) = available(cobj)

function maxSamplers(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_maxSamplers(julia_to_cpp(cobj)))
end
maxSamplers(cobj::Any; ) = maxSamplers(cobj)

function nativeVectorWidthInt(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_nativeVectorWidthInt(julia_to_cpp(cobj)))
end
nativeVectorWidthInt(cobj::Any; ) = nativeVectorWidthInt(cobj)

function maxComputeUnits(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_maxComputeUnits(julia_to_cpp(cobj)))
end
maxComputeUnits(cobj::Any; ) = maxComputeUnits(cobj)

function globalMemCacheSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_globalMemCacheSize(julia_to_cpp(cobj)))
end
globalMemCacheSize(cobj::Any; ) = globalMemCacheSize(cobj)

function imageFromBufferSupport(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_imageFromBufferSupport(julia_to_cpp(cobj)))
end
imageFromBufferSupport(cobj::Any; ) = imageFromBufferSupport(cobj)

function memBaseAddrAlign(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_memBaseAddrAlign(julia_to_cpp(cobj)))
end
memBaseAddrAlign(cobj::Any; ) = memBaseAddrAlign(cobj)

function executionCapabilities(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_executionCapabilities(julia_to_cpp(cobj)))
end
executionCapabilities(cobj::Any; ) = executionCapabilities(cobj)

function getDefault(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_getDefault(julia_to_cpp(cobj)))
end
getDefault(cobj::Any; ) = getDefault(cobj)

function preferredVectorWidthInt(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_preferredVectorWidthInt(julia_to_cpp(cobj)))
end
preferredVectorWidthInt(cobj::Any; ) = preferredVectorWidthInt(cobj)

function addressBits(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_addressBits(julia_to_cpp(cobj)))
end
addressBits(cobj::Any; ) = addressBits(cobj)

function image3DMaxDepth(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_image3DMaxDepth(julia_to_cpp(cobj)))
end
image3DMaxDepth(cobj::Any; ) = image3DMaxDepth(cobj)

function maxWorkItemDims(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_maxWorkItemDims(julia_to_cpp(cobj)))
end
maxWorkItemDims(cobj::Any; ) = maxWorkItemDims(cobj)

function deviceVersionMinor(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_deviceVersionMinor(julia_to_cpp(cobj)))
end
deviceVersionMinor(cobj::Any; ) = deviceVersionMinor(cobj)

function linkerAvailable(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_linkerAvailable(julia_to_cpp(cobj)))
end
linkerAvailable(cobj::Any; ) = linkerAvailable(cobj)

function imageMaxArraySize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_imageMaxArraySize(julia_to_cpp(cobj)))
end
imageMaxArraySize(cobj::Any; ) = imageMaxArraySize(cobj)

function preferredVectorWidthShort(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_preferredVectorWidthShort(julia_to_cpp(cobj)))
end
preferredVectorWidthShort(cobj::Any; ) = preferredVectorWidthShort(cobj)

function OpenCL_C_Version(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_OpenCL_C_Version(julia_to_cpp(cobj)))
end
OpenCL_C_Version(cobj::Any; ) = OpenCL_C_Version(cobj)

function deviceVersionMajor(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_deviceVersionMajor(julia_to_cpp(cobj)))
end
deviceVersionMajor(cobj::Any; ) = deviceVersionMajor(cobj)

function name(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_name(julia_to_cpp(cobj)))
end
name(cobj::Any; ) = name(cobj)

function isExtensionSupported(cobj::Any, extensionName::String)
	return cpp_to_julia(jlopencv_cv_ocl_Device_isExtensionSupported(julia_to_cpp(cobj),julia_to_cpp(extensionName)))
end
isExtensionSupported(cobj::Any, extensionName::String; ) = isExtensionSupported(cobj, extensionName)

function printfBufferSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_printfBufferSize(julia_to_cpp(cobj)))
end
printfBufferSize(cobj::Any; ) = printfBufferSize(cobj)

function localMemType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_localMemType(julia_to_cpp(cobj)))
end
localMemType(cobj::Any; ) = localMemType(cobj)

function nativeVectorWidthHalf(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_nativeVectorWidthHalf(julia_to_cpp(cobj)))
end
nativeVectorWidthHalf(cobj::Any; ) = nativeVectorWidthHalf(cobj)

function preferredVectorWidthDouble(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_preferredVectorWidthDouble(julia_to_cpp(cobj)))
end
preferredVectorWidthDouble(cobj::Any; ) = preferredVectorWidthDouble(cobj)

function profilingTimerResolution(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_profilingTimerResolution(julia_to_cpp(cobj)))
end
profilingTimerResolution(cobj::Any; ) = profilingTimerResolution(cobj)

function vendorName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_vendorName(julia_to_cpp(cobj)))
end
vendorName(cobj::Any; ) = vendorName(cobj)

function endianLittle(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_endianLittle(julia_to_cpp(cobj)))
end
endianLittle(cobj::Any; ) = endianLittle(cobj)

function isAMD(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_isAMD(julia_to_cpp(cobj)))
end
isAMD(cobj::Any; ) = isAMD(cobj)

function extensions(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_extensions(julia_to_cpp(cobj)))
end
extensions(cobj::Any; ) = extensions(cobj)

function preferredVectorWidthHalf(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_preferredVectorWidthHalf(julia_to_cpp(cobj)))
end
preferredVectorWidthHalf(cobj::Any; ) = preferredVectorWidthHalf(cobj)

function globalMemCacheType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_globalMemCacheType(julia_to_cpp(cobj)))
end
globalMemCacheType(cobj::Any; ) = globalMemCacheType(cobj)

function nativeVectorWidthDouble(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_nativeVectorWidthDouble(julia_to_cpp(cobj)))
end
nativeVectorWidthDouble(cobj::Any; ) = nativeVectorWidthDouble(cobj)

function maxConstantArgs(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_maxConstantArgs(julia_to_cpp(cobj)))
end
maxConstantArgs(cobj::Any; ) = maxConstantArgs(cobj)

function preferredVectorWidthLong(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_preferredVectorWidthLong(julia_to_cpp(cobj)))
end
preferredVectorWidthLong(cobj::Any; ) = preferredVectorWidthLong(cobj)

function maxConstantBufferSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_maxConstantBufferSize(julia_to_cpp(cobj)))
end
maxConstantBufferSize(cobj::Any; ) = maxConstantBufferSize(cobj)

function nativeVectorWidthChar(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ocl_Device_nativeVectorWidthChar(julia_to_cpp(cobj)))
end
nativeVectorWidthChar(cobj::Any; ) = nativeVectorWidthChar(cobj)

function useOpenCL()
	return cpp_to_julia(jlopencv_cv_ocl_useOpenCL())
end
useOpenCL(; ) = useOpenCL()

function finish()
	return cpp_to_julia(jlopencv_cv_ocl_finish())
end
finish(; ) = finish()

function setUseOpenCL(flag::Bool)
	return cpp_to_julia(jlopencv_cv_ocl_setUseOpenCL(julia_to_cpp(flag)))
end
setUseOpenCL(flag::Bool; ) = setUseOpenCL(flag)

function haveAmdFft()
	return cpp_to_julia(jlopencv_cv_ocl_haveAmdFft())
end
haveAmdFft(; ) = haveAmdFft()

function Device_getDefault()
	return cpp_to_julia(jlopencv_cv_ocl_Device_getDefault())
end
Device_getDefault(; ) = Device_getDefault()

function haveAmdBlas()
	return cpp_to_julia(jlopencv_cv_ocl_haveAmdBlas())
end
haveAmdBlas(; ) = haveAmdBlas()

function haveOpenCL()
	return cpp_to_julia(jlopencv_cv_ocl_haveOpenCL())
end
haveOpenCL(; ) = haveOpenCL()
function Base.getproperty(m::flann_Index, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::flann_Index, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function load(cobj::Any, features::Mat, filename::String)
	return cpp_to_julia(jlopencv_cv_flann_Index_load(julia_to_cpp(cobj),julia_to_cpp(features),julia_to_cpp(filename)))
end
load(cobj::Any, features::Mat, filename::String; ) = load(cobj, features, filename)

function load(cobj::Any, features::UMat, filename::String)
	return cpp_to_julia(jlopencv_cv_flann_Index_load(julia_to_cpp(cobj),julia_to_cpp(features),julia_to_cpp(filename)))
end
load(cobj::Any, features::UMat, filename::String; ) = load(cobj, features, filename)

function radiusSearch(cobj::Any, query::Mat, radius::Float64, maxResults::Int32, indices::Mat, dists::Mat, params::SearchParams)
	return cpp_to_julia(jlopencv_cv_flann_Index_radiusSearch(julia_to_cpp(cobj),julia_to_cpp(query),julia_to_cpp(radius),julia_to_cpp(maxResults),julia_to_cpp(indices),julia_to_cpp(dists),julia_to_cpp(params)))
end
radiusSearch(cobj::Any, query::Mat, radius::Float64, maxResults::Int32, indices::Mat, dists::Mat; params::SearchParams = SearchParams()) = radiusSearch(cobj, query, radius, maxResults, indices, dists, params)

function radiusSearch(cobj::Any, query::UMat, radius::Float64, maxResults::Int32, indices::UMat, dists::UMat, params::SearchParams)
	return cpp_to_julia(jlopencv_cv_flann_Index_radiusSearch(julia_to_cpp(cobj),julia_to_cpp(query),julia_to_cpp(radius),julia_to_cpp(maxResults),julia_to_cpp(indices),julia_to_cpp(dists),julia_to_cpp(params)))
end
radiusSearch(cobj::Any, query::UMat, radius::Float64, maxResults::Int32, indices::UMat, dists::UMat; params::SearchParams = SearchParams()) = radiusSearch(cobj, query, radius, maxResults, indices, dists, params)

function getAlgorithm(cobj::Any)
	return cpp_to_julia(jlopencv_cv_flann_Index_getAlgorithm(julia_to_cpp(cobj)))
end
getAlgorithm(cobj::Any; ) = getAlgorithm(cobj)

function build(cobj::Any, features::Mat, params::IndexParams, distType::cvflann_flann_distance_t)
	return cpp_to_julia(jlopencv_cv_flann_Index_build(julia_to_cpp(cobj),julia_to_cpp(features),julia_to_cpp(params),julia_to_cpp(distType)))
end
build(cobj::Any, features::Mat, params::IndexParams; distType::cvflann_flann_distance_t = cvflann::FLANN_DIST_L2) = build(cobj, features, params, distType)

function build(cobj::Any, features::UMat, params::IndexParams, distType::cvflann_flann_distance_t)
	return cpp_to_julia(jlopencv_cv_flann_Index_build(julia_to_cpp(cobj),julia_to_cpp(features),julia_to_cpp(params),julia_to_cpp(distType)))
end
build(cobj::Any, features::UMat, params::IndexParams; distType::cvflann_flann_distance_t = cvflann::FLANN_DIST_L2) = build(cobj, features, params, distType)

function getDistance(cobj::Any)
	return cpp_to_julia(jlopencv_cv_flann_Index_getDistance(julia_to_cpp(cobj)))
end
getDistance(cobj::Any; ) = getDistance(cobj)

function release(cobj::Any)
	return cpp_to_julia(jlopencv_cv_flann_Index_release(julia_to_cpp(cobj)))
end
release(cobj::Any; ) = release(cobj)

function save(cobj::Any, filename::String)
	return cpp_to_julia(jlopencv_cv_flann_Index_save(julia_to_cpp(cobj),julia_to_cpp(filename)))
end
save(cobj::Any, filename::String; ) = save(cobj, filename)

function knnSearch(cobj::Any, query::Mat, knn::Int32, indices::Mat, dists::Mat, params::SearchParams)
	return cpp_to_julia(jlopencv_cv_flann_Index_knnSearch(julia_to_cpp(cobj),julia_to_cpp(query),julia_to_cpp(knn),julia_to_cpp(indices),julia_to_cpp(dists),julia_to_cpp(params)))
end
knnSearch(cobj::Any, query::Mat, knn::Int32, indices::Mat, dists::Mat; params::SearchParams = SearchParams()) = knnSearch(cobj, query, knn, indices, dists, params)

function knnSearch(cobj::Any, query::UMat, knn::Int32, indices::UMat, dists::UMat, params::SearchParams)
	return cpp_to_julia(jlopencv_cv_flann_Index_knnSearch(julia_to_cpp(cobj),julia_to_cpp(query),julia_to_cpp(knn),julia_to_cpp(indices),julia_to_cpp(dists),julia_to_cpp(params)))
end
knnSearch(cobj::Any, query::UMat, knn::Int32, indices::UMat, dists::UMat; params::SearchParams = SearchParams()) = knnSearch(cobj, query, knn, indices, dists, params)
function Base.getproperty(m::ml_EM, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_EM, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function load(cobj::Any, filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_EM_load(julia_to_cpp(cobj),julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
load(cobj::Any, filepath::String; nodeName::String = String()) = load(cobj, filepath, nodeName)

function trainE(cobj::Any, samples::Mat, means0::Mat, covs0::Mat, weights0::Mat, logLikelihoods::Mat, labels::Mat, probs::Mat)
	return cpp_to_julia(jlopencv_cv_ml_EM_trainE(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(means0),julia_to_cpp(covs0),julia_to_cpp(weights0),julia_to_cpp(logLikelihoods),julia_to_cpp(labels),julia_to_cpp(probs)))
end
trainE(cobj::Any, samples::Mat, means0::Mat, covs0::Mat, weights0::Mat, logLikelihoods::Mat; covs0::Mat = Mat(), weights0::Mat = Mat()) = trainE(cobj, samples, means0, covs0, weights0, logLikelihoods, labels, probs)

function trainE(cobj::Any, samples::UMat, means0::UMat, covs0::UMat, weights0::UMat, logLikelihoods::UMat, labels::UMat, probs::UMat)
	return cpp_to_julia(jlopencv_cv_ml_EM_trainE(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(means0),julia_to_cpp(covs0),julia_to_cpp(weights0),julia_to_cpp(logLikelihoods),julia_to_cpp(labels),julia_to_cpp(probs)))
end
trainE(cobj::Any, samples::UMat, means0::UMat, covs0::UMat, weights0::UMat, logLikelihoods::UMat; covs0::UMat = UMat(), weights0::UMat = UMat()) = trainE(cobj, samples, means0, covs0, weights0, logLikelihoods, labels, probs)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_EM_getTermCriteria(julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function getCovs(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_EM_getCovs(julia_to_cpp(cobj)))
end
getCovs(cobj::Any; ) = getCovs(cobj)

function getCovs(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_EM_getCovs(julia_to_cpp(cobj)))
end
getCovs(cobj::Any; ) = getCovs(cobj)

function getWeights(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_EM_getWeights(julia_to_cpp(cobj)))
end
getWeights(cobj::Any; ) = getWeights(cobj)

function setClustersNumber(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_EM_setClustersNumber(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setClustersNumber(cobj::Any, val::Int32; ) = setClustersNumber(cobj, val)

function predict(cobj::Any, samples::Mat, results::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_EM_predict(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(results),julia_to_cpp(flags)))
end
predict(cobj::Any, samples::Mat, results::Mat; flags::Int32 = 0) = predict(cobj, samples, results, flags)

function predict(cobj::Any, samples::UMat, results::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_EM_predict(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(results),julia_to_cpp(flags)))
end
predict(cobj::Any, samples::UMat, results::UMat; flags::Int32 = 0) = predict(cobj, samples, results, flags)

function trainM(cobj::Any, samples::Mat, probs0::Mat, logLikelihoods::Mat, labels::Mat, probs::Mat)
	return cpp_to_julia(jlopencv_cv_ml_EM_trainM(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(probs0),julia_to_cpp(logLikelihoods),julia_to_cpp(labels),julia_to_cpp(probs)))
end
trainM(cobj::Any, samples::Mat, probs0::Mat, logLikelihoods::Mat, labels::Mat, probs::Mat; ) = trainM(cobj, samples, probs0, logLikelihoods, labels, probs)

function trainM(cobj::Any, samples::UMat, probs0::UMat, logLikelihoods::UMat, labels::UMat, probs::UMat)
	return cpp_to_julia(jlopencv_cv_ml_EM_trainM(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(probs0),julia_to_cpp(logLikelihoods),julia_to_cpp(labels),julia_to_cpp(probs)))
end
trainM(cobj::Any, samples::UMat, probs0::UMat, logLikelihoods::UMat, labels::UMat, probs::UMat; ) = trainM(cobj, samples, probs0, logLikelihoods, labels, probs)

function predict2(cobj::Any, sample::Mat, probs::Mat)
	return cpp_to_julia(jlopencv_cv_ml_EM_predict2(julia_to_cpp(cobj),julia_to_cpp(sample),julia_to_cpp(probs)))
end
predict2(cobj::Any, sample::Mat, probs::Mat; ) = predict2(cobj, sample, probs)

function predict2(cobj::Any, sample::UMat, probs::UMat)
	return cpp_to_julia(jlopencv_cv_ml_EM_predict2(julia_to_cpp(cobj),julia_to_cpp(sample),julia_to_cpp(probs)))
end
predict2(cobj::Any, sample::UMat, probs::UMat; ) = predict2(cobj, sample, probs)

function getClustersNumber(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_EM_getClustersNumber(julia_to_cpp(cobj)))
end
getClustersNumber(cobj::Any; ) = getClustersNumber(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return cpp_to_julia(jlopencv_cv_ml_EM_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function getCovarianceMatrixType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_EM_getCovarianceMatrixType(julia_to_cpp(cobj)))
end
getCovarianceMatrixType(cobj::Any; ) = getCovarianceMatrixType(cobj)

function setCovarianceMatrixType(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_EM_setCovarianceMatrixType(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setCovarianceMatrixType(cobj::Any, val::Int32; ) = setCovarianceMatrixType(cobj, val)

function create(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_EM_create(julia_to_cpp(cobj)))
end
create(cobj::Any; ) = create(cobj)

function getMeans(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_EM_getMeans(julia_to_cpp(cobj)))
end
getMeans(cobj::Any; ) = getMeans(cobj)

function trainEM(cobj::Any, samples::Mat, logLikelihoods::Mat, labels::Mat, probs::Mat)
	return cpp_to_julia(jlopencv_cv_ml_EM_trainEM(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(logLikelihoods),julia_to_cpp(labels),julia_to_cpp(probs)))
end
trainEM(cobj::Any, samples::Mat, logLikelihoods::Mat, labels::Mat, probs::Mat; ) = trainEM(cobj, samples, logLikelihoods, labels, probs)

function trainEM(cobj::Any, samples::UMat, logLikelihoods::UMat, labels::UMat, probs::UMat)
	return cpp_to_julia(jlopencv_cv_ml_EM_trainEM(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(logLikelihoods),julia_to_cpp(labels),julia_to_cpp(probs)))
end
trainEM(cobj::Any, samples::UMat, logLikelihoods::UMat, labels::UMat, probs::UMat; ) = trainEM(cobj, samples, logLikelihoods, labels, probs)
function Base.getproperty(m::ml_SVM, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_SVM, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function load(cobj::Any, filepath::String)
	return cpp_to_julia(jlopencv_cv_ml_SVM_load(julia_to_cpp(cobj),julia_to_cpp(filepath)))
end
load(cobj::Any, filepath::String; ) = load(cobj, filepath)

function getDegree(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getDegree(julia_to_cpp(cobj)))
end
getDegree(cobj::Any; ) = getDegree(cobj)

function getC(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getC(julia_to_cpp(cobj)))
end
getC(cobj::Any; ) = getC(cobj)

function setCoef0(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_SVM_setCoef0(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setCoef0(cobj::Any, val::Float64; ) = setCoef0(cobj, val)

function getP(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getP(julia_to_cpp(cobj)))
end
getP(cobj::Any; ) = getP(cobj)

function setNu(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_SVM_setNu(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setNu(cobj::Any, val::Float64; ) = setNu(cobj, val)

function setType(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_SVM_setType(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setType(cobj::Any, val::Int32; ) = setType(cobj, val)

function getSupportVectors(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getSupportVectors(julia_to_cpp(cobj)))
end
getSupportVectors(cobj::Any; ) = getSupportVectors(cobj)

function setDegree(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_SVM_setDegree(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setDegree(cobj::Any, val::Float64; ) = setDegree(cobj, val)

function create(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_create(julia_to_cpp(cobj)))
end
create(cobj::Any; ) = create(cobj)

function setC(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_SVM_setC(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setC(cobj::Any, val::Float64; ) = setC(cobj, val)

function getType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getType(julia_to_cpp(cobj)))
end
getType(cobj::Any; ) = getType(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return cpp_to_julia(jlopencv_cv_ml_SVM_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function setGamma(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_SVM_setGamma(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setGamma(cobj::Any, val::Float64; ) = setGamma(cobj, val)

function setP(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_SVM_setP(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setP(cobj::Any, val::Float64; ) = setP(cobj, val)

function getCoef0(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getCoef0(julia_to_cpp(cobj)))
end
getCoef0(cobj::Any; ) = getCoef0(cobj)

function getGamma(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getGamma(julia_to_cpp(cobj)))
end
getGamma(cobj::Any; ) = getGamma(cobj)

function getKernelType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getKernelType(julia_to_cpp(cobj)))
end
getKernelType(cobj::Any; ) = getKernelType(cobj)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getTermCriteria(julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function trainAuto(cobj::Any, samples::Mat, layout::Int32, responses::Mat, kFold::Int32, Cgrid::Ptr{ParamGrid}, gammaGrid::Ptr{ParamGrid}, pGrid::Ptr{ParamGrid}, nuGrid::Ptr{ParamGrid}, coeffGrid::Ptr{ParamGrid}, degreeGrid::Ptr{ParamGrid}, balanced::Bool)
	return cpp_to_julia(jlopencv_cv_ml_SVM_trainAuto(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(layout),julia_to_cpp(responses),julia_to_cpp(kFold),julia_to_cpp(Cgrid),julia_to_cpp(gammaGrid),julia_to_cpp(pGrid),julia_to_cpp(nuGrid),julia_to_cpp(coeffGrid),julia_to_cpp(degreeGrid),julia_to_cpp(balanced)))
end
trainAuto(cobj::Any, samples::Mat, layout::Int32, responses::Mat; kFold::Int32 = 10, Cgrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::C), gammaGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::GAMMA), pGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::P), nuGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::NU), coeffGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::COEF), degreeGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::DEGREE), balanced::Bool = false) = trainAuto(cobj, samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced)

function trainAuto(cobj::Any, samples::UMat, layout::Int32, responses::UMat, kFold::Int32, Cgrid::Ptr{ParamGrid}, gammaGrid::Ptr{ParamGrid}, pGrid::Ptr{ParamGrid}, nuGrid::Ptr{ParamGrid}, coeffGrid::Ptr{ParamGrid}, degreeGrid::Ptr{ParamGrid}, balanced::Bool)
	return cpp_to_julia(jlopencv_cv_ml_SVM_trainAuto(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(layout),julia_to_cpp(responses),julia_to_cpp(kFold),julia_to_cpp(Cgrid),julia_to_cpp(gammaGrid),julia_to_cpp(pGrid),julia_to_cpp(nuGrid),julia_to_cpp(coeffGrid),julia_to_cpp(degreeGrid),julia_to_cpp(balanced)))
end
trainAuto(cobj::Any, samples::UMat, layout::Int32, responses::UMat; kFold::Int32 = 10, Cgrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::C), gammaGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::GAMMA), pGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::P), nuGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::NU), coeffGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::COEF), degreeGrid::Ptr{ParamGrid} = SVM::getDefaultGridPtr(SVM::DEGREE), balanced::Bool = false) = trainAuto(cobj, samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced)

function getDecisionFunction(cobj::Any, i::Int32, alpha::Mat, svidx::Mat)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getDecisionFunction(julia_to_cpp(cobj),julia_to_cpp(i),julia_to_cpp(alpha),julia_to_cpp(svidx)))
end
getDecisionFunction(cobj::Any, i::Int32, alpha::Mat, svidx::Mat; ) = getDecisionFunction(cobj, i, alpha, svidx)

function getDecisionFunction(cobj::Any, i::Int32, alpha::UMat, svidx::UMat)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getDecisionFunction(julia_to_cpp(cobj),julia_to_cpp(i),julia_to_cpp(alpha),julia_to_cpp(svidx)))
end
getDecisionFunction(cobj::Any, i::Int32, alpha::UMat, svidx::UMat; ) = getDecisionFunction(cobj, i, alpha, svidx)

function getClassWeights(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getClassWeights(julia_to_cpp(cobj)))
end
getClassWeights(cobj::Any; ) = getClassWeights(cobj)

function getDefaultGridPtr(cobj::Any, param_id::Int32)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getDefaultGridPtr(julia_to_cpp(cobj),julia_to_cpp(param_id)))
end
getDefaultGridPtr(cobj::Any, param_id::Int32; ) = getDefaultGridPtr(cobj, param_id)

function setKernel(cobj::Any, kernelType::Int32)
	return cpp_to_julia(jlopencv_cv_ml_SVM_setKernel(julia_to_cpp(cobj),julia_to_cpp(kernelType)))
end
setKernel(cobj::Any, kernelType::Int32; ) = setKernel(cobj, kernelType)

function setClassWeights(cobj::Any, val::Mat)
	return cpp_to_julia(jlopencv_cv_ml_SVM_setClassWeights(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setClassWeights(cobj::Any, val::Mat; ) = setClassWeights(cobj, val)

function setClassWeights(cobj::Any, val::Mat)
	return cpp_to_julia(jlopencv_cv_ml_SVM_setClassWeights(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setClassWeights(cobj::Any, val::Mat; ) = setClassWeights(cobj, val)

function getNu(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getNu(julia_to_cpp(cobj)))
end
getNu(cobj::Any; ) = getNu(cobj)

function getUncompressedSupportVectors(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getUncompressedSupportVectors(julia_to_cpp(cobj)))
end
getUncompressedSupportVectors(cobj::Any; ) = getUncompressedSupportVectors(cobj)
function Base.getproperty(m::ml_Boost, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_Boost, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function load(cobj::Any, filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_Boost_load(julia_to_cpp(cobj),julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
load(cobj::Any, filepath::String; nodeName::String = String()) = load(cobj, filepath, nodeName)

function create(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_Boost_create(julia_to_cpp(cobj)))
end
create(cobj::Any; ) = create(cobj)

function getWeightTrimRate(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_Boost_getWeightTrimRate(julia_to_cpp(cobj)))
end
getWeightTrimRate(cobj::Any; ) = getWeightTrimRate(cobj)

function setWeakCount(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_Boost_setWeakCount(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setWeakCount(cobj::Any, val::Int32; ) = setWeakCount(cobj, val)

function getWeakCount(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_Boost_getWeakCount(julia_to_cpp(cobj)))
end
getWeakCount(cobj::Any; ) = getWeakCount(cobj)

function getBoostType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_Boost_getBoostType(julia_to_cpp(cobj)))
end
getBoostType(cobj::Any; ) = getBoostType(cobj)

function setWeightTrimRate(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_Boost_setWeightTrimRate(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setWeightTrimRate(cobj::Any, val::Float64; ) = setWeightTrimRate(cobj, val)

function setBoostType(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_Boost_setBoostType(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setBoostType(cobj::Any, val::Int32; ) = setBoostType(cobj, val)
function Base.getproperty(m::ml_NormalBayesClassifier, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_NormalBayesClassifier, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function load(cobj::Any, filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_NormalBayesClassifier_load(julia_to_cpp(cobj),julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
load(cobj::Any, filepath::String; nodeName::String = String()) = load(cobj, filepath, nodeName)

function predictProb(cobj::Any, inputs::Mat, outputs::Mat, outputProbs::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_NormalBayesClassifier_predictProb(julia_to_cpp(cobj),julia_to_cpp(inputs),julia_to_cpp(outputs),julia_to_cpp(outputProbs),julia_to_cpp(flags)))
end
predictProb(cobj::Any, inputs::Mat, outputs::Mat, outputProbs::Mat; flags::Int32 = 0) = predictProb(cobj, inputs, outputs, outputProbs, flags)

function predictProb(cobj::Any, inputs::UMat, outputs::UMat, outputProbs::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_NormalBayesClassifier_predictProb(julia_to_cpp(cobj),julia_to_cpp(inputs),julia_to_cpp(outputs),julia_to_cpp(outputProbs),julia_to_cpp(flags)))
end
predictProb(cobj::Any, inputs::UMat, outputs::UMat, outputProbs::UMat; flags::Int32 = 0) = predictProb(cobj, inputs, outputs, outputProbs, flags)

function create(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_NormalBayesClassifier_create(julia_to_cpp(cobj)))
end
create(cobj::Any; ) = create(cobj)
function Base.getproperty(m::ml_TrainData, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_TrainData, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setTrainTestSplit(cobj::Any, count::Int32, shuffle::Bool)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_setTrainTestSplit(julia_to_cpp(cobj),julia_to_cpp(count),julia_to_cpp(shuffle)))
end
setTrainTestSplit(cobj::Any, count::Int32; shuffle::Bool = true) = setTrainTestSplit(cobj, count, shuffle)

function getTrainResponses(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getTrainResponses(julia_to_cpp(cobj)))
end
getTrainResponses(cobj::Any; ) = getTrainResponses(cobj)

function setTrainTestSplitRatio(cobj::Any, ratio::Float64, shuffle::Bool)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_setTrainTestSplitRatio(julia_to_cpp(cobj),julia_to_cpp(ratio),julia_to_cpp(shuffle)))
end
setTrainTestSplitRatio(cobj::Any, ratio::Float64; shuffle::Bool = true) = setTrainTestSplitRatio(cobj, ratio, shuffle)

function getValues(cobj::Any, vi::Int32, sidx::Mat, values::Float32*)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getValues(julia_to_cpp(cobj),julia_to_cpp(vi),julia_to_cpp(sidx),julia_to_cpp(values)))
end
getValues(cobj::Any, vi::Int32, sidx::Mat, values::Float32*; ) = getValues(cobj, vi, sidx, values)

function getValues(cobj::Any, vi::Int32, sidx::UMat, values::Float32*)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getValues(julia_to_cpp(cobj),julia_to_cpp(vi),julia_to_cpp(sidx),julia_to_cpp(values)))
end
getValues(cobj::Any, vi::Int32, sidx::UMat, values::Float32*; ) = getValues(cobj, vi, sidx, values)

function getNTestSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getNTestSamples(julia_to_cpp(cobj)))
end
getNTestSamples(cobj::Any; ) = getNTestSamples(cobj)

function getVarSymbolFlags(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getVarSymbolFlags(julia_to_cpp(cobj)))
end
getVarSymbolFlags(cobj::Any; ) = getVarSymbolFlags(cobj)

function getTestResponses(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getTestResponses(julia_to_cpp(cobj)))
end
getTestResponses(cobj::Any; ) = getTestResponses(cobj)

function getNTrainSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getNTrainSamples(julia_to_cpp(cobj)))
end
getNTrainSamples(cobj::Any; ) = getNTrainSamples(cobj)

function getVarIdx(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getVarIdx(julia_to_cpp(cobj)))
end
getVarIdx(cobj::Any; ) = getVarIdx(cobj)

function getTestNormCatResponses(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getTestNormCatResponses(julia_to_cpp(cobj)))
end
getTestNormCatResponses(cobj::Any; ) = getTestNormCatResponses(cobj)

function getSampleWeights(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getSampleWeights(julia_to_cpp(cobj)))
end
getSampleWeights(cobj::Any; ) = getSampleWeights(cobj)

function getClassLabels(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getClassLabels(julia_to_cpp(cobj)))
end
getClassLabels(cobj::Any; ) = getClassLabels(cobj)

function getNAllVars(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getNAllVars(julia_to_cpp(cobj)))
end
getNAllVars(cobj::Any; ) = getNAllVars(cobj)

function create(cobj::Any, samples::Mat, layout::Int32, responses::Mat, varIdx::Mat, sampleIdx::Mat, sampleWeights::Mat, varType::Mat)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_create(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(layout),julia_to_cpp(responses),julia_to_cpp(varIdx),julia_to_cpp(sampleIdx),julia_to_cpp(sampleWeights),julia_to_cpp(varType)))
end
create(cobj::Any, samples::Mat, layout::Int32, responses::Mat; varIdx::Mat = Mat(), sampleIdx::Mat = Mat(), sampleWeights::Mat = Mat(), varType::Mat = Mat()) = create(cobj, samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType)

function create(cobj::Any, samples::UMat, layout::Int32, responses::UMat, varIdx::UMat, sampleIdx::UMat, sampleWeights::UMat, varType::UMat)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_create(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(layout),julia_to_cpp(responses),julia_to_cpp(varIdx),julia_to_cpp(sampleIdx),julia_to_cpp(sampleWeights),julia_to_cpp(varType)))
end
create(cobj::Any, samples::UMat, layout::Int32, responses::UMat; varIdx::UMat = UMat(), sampleIdx::UMat = UMat(), sampleWeights::UMat = UMat(), varType::UMat = UMat()) = create(cobj, samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType)

function getResponses(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getResponses(julia_to_cpp(cobj)))
end
getResponses(cobj::Any; ) = getResponses(cobj)

function getSubMatrix(cobj::Any, matrix::Mat, idx::Mat, layout::Int32)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getSubMatrix(julia_to_cpp(cobj),julia_to_cpp(matrix),julia_to_cpp(idx),julia_to_cpp(layout)))
end
getSubMatrix(cobj::Any, matrix::Mat, idx::Mat, layout::Int32; ) = getSubMatrix(cobj, matrix, idx, layout)

function getSubMatrix(cobj::Any, matrix::Mat, idx::Mat, layout::Int32)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getSubMatrix(julia_to_cpp(cobj),julia_to_cpp(matrix),julia_to_cpp(idx),julia_to_cpp(layout)))
end
getSubMatrix(cobj::Any, matrix::Mat, idx::Mat, layout::Int32; ) = getSubMatrix(cobj, matrix, idx, layout)

function getNVars(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getNVars(julia_to_cpp(cobj)))
end
getNVars(cobj::Any; ) = getNVars(cobj)

function getSample(cobj::Any, varIdx::Mat, sidx::Int32, buf::Float32*)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getSample(julia_to_cpp(cobj),julia_to_cpp(varIdx),julia_to_cpp(sidx),julia_to_cpp(buf)))
end
getSample(cobj::Any, varIdx::Mat, sidx::Int32, buf::Float32*; ) = getSample(cobj, varIdx, sidx, buf)

function getSample(cobj::Any, varIdx::UMat, sidx::Int32, buf::Float32*)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getSample(julia_to_cpp(cobj),julia_to_cpp(varIdx),julia_to_cpp(sidx),julia_to_cpp(buf)))
end
getSample(cobj::Any, varIdx::UMat, sidx::Int32, buf::Float32*; ) = getSample(cobj, varIdx, sidx, buf)

function getNames(cobj::Any, names::vector{String})
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getNames(julia_to_cpp(cobj),julia_to_cpp(names)))
end
getNames(cobj::Any, names::vector{String}; ) = getNames(cobj, names)

function getCatCount(cobj::Any, vi::Int32)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getCatCount(julia_to_cpp(cobj),julia_to_cpp(vi)))
end
getCatCount(cobj::Any, vi::Int32; ) = getCatCount(cobj, vi)

function getTestSampleIdx(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getTestSampleIdx(julia_to_cpp(cobj)))
end
getTestSampleIdx(cobj::Any; ) = getTestSampleIdx(cobj)

function getTrainNormCatResponses(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getTrainNormCatResponses(julia_to_cpp(cobj)))
end
getTrainNormCatResponses(cobj::Any; ) = getTrainNormCatResponses(cobj)

function getTrainSampleWeights(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getTrainSampleWeights(julia_to_cpp(cobj)))
end
getTrainSampleWeights(cobj::Any; ) = getTrainSampleWeights(cobj)

function getSubVector(cobj::Any, vec::Mat, idx::Mat)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getSubVector(julia_to_cpp(cobj),julia_to_cpp(vec),julia_to_cpp(idx)))
end
getSubVector(cobj::Any, vec::Mat, idx::Mat; ) = getSubVector(cobj, vec, idx)

function getSubVector(cobj::Any, vec::Mat, idx::Mat)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getSubVector(julia_to_cpp(cobj),julia_to_cpp(vec),julia_to_cpp(idx)))
end
getSubVector(cobj::Any, vec::Mat, idx::Mat; ) = getSubVector(cobj, vec, idx)

function getTestSampleWeights(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getTestSampleWeights(julia_to_cpp(cobj)))
end
getTestSampleWeights(cobj::Any; ) = getTestSampleWeights(cobj)

function shuffleTrainTest(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_shuffleTrainTest(julia_to_cpp(cobj)))
end
shuffleTrainTest(cobj::Any; ) = shuffleTrainTest(cobj)

function getTrainSamples(cobj::Any, layout::Int32, compressSamples::Bool, compressVars::Bool)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getTrainSamples(julia_to_cpp(cobj),julia_to_cpp(layout),julia_to_cpp(compressSamples),julia_to_cpp(compressVars)))
end
getTrainSamples(cobj::Any; layout::Int32 = ROW_SAMPLE, compressSamples::Bool = true, compressVars::Bool = true) = getTrainSamples(cobj, layout, compressSamples, compressVars)

function getVarType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getVarType(julia_to_cpp(cobj)))
end
getVarType(cobj::Any; ) = getVarType(cobj)

function getTrainSampleIdx(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getTrainSampleIdx(julia_to_cpp(cobj)))
end
getTrainSampleIdx(cobj::Any; ) = getTrainSampleIdx(cobj)

function getMissing(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getMissing(julia_to_cpp(cobj)))
end
getMissing(cobj::Any; ) = getMissing(cobj)

function getDefaultSubstValues(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getDefaultSubstValues(julia_to_cpp(cobj)))
end
getDefaultSubstValues(cobj::Any; ) = getDefaultSubstValues(cobj)

function getCatMap(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getCatMap(julia_to_cpp(cobj)))
end
getCatMap(cobj::Any; ) = getCatMap(cobj)

function getTestSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getTestSamples(julia_to_cpp(cobj)))
end
getTestSamples(cobj::Any; ) = getTestSamples(cobj)

function getCatOfs(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getCatOfs(julia_to_cpp(cobj)))
end
getCatOfs(cobj::Any; ) = getCatOfs(cobj)

function getNSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getNSamples(julia_to_cpp(cobj)))
end
getNSamples(cobj::Any; ) = getNSamples(cobj)

function getSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getSamples(julia_to_cpp(cobj)))
end
getSamples(cobj::Any; ) = getSamples(cobj)

function getNormCatResponses(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getNormCatResponses(julia_to_cpp(cobj)))
end
getNormCatResponses(cobj::Any; ) = getNormCatResponses(cobj)

function getResponseType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getResponseType(julia_to_cpp(cobj)))
end
getResponseType(cobj::Any; ) = getResponseType(cobj)

function getLayout(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getLayout(julia_to_cpp(cobj)))
end
getLayout(cobj::Any; ) = getLayout(cobj)
function Base.getproperty(m::ml_LogisticRegression, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_LogisticRegression, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function load(cobj::Any, filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_load(julia_to_cpp(cobj),julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
load(cobj::Any, filepath::String; nodeName::String = String()) = load(cobj, filepath, nodeName)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_getTermCriteria(julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function setTrainMethod(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_setTrainMethod(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setTrainMethod(cobj::Any, val::Int32; ) = setTrainMethod(cobj, val)

function getIterations(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_getIterations(julia_to_cpp(cobj)))
end
getIterations(cobj::Any; ) = getIterations(cobj)

function getTrainMethod(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_getTrainMethod(julia_to_cpp(cobj)))
end
getTrainMethod(cobj::Any; ) = getTrainMethod(cobj)

function predict(cobj::Any, samples::Mat, results::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_predict(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(results),julia_to_cpp(flags)))
end
predict(cobj::Any, samples::Mat, results::Mat; flags::Int32 = 0) = predict(cobj, samples, results, flags)

function predict(cobj::Any, samples::UMat, results::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_predict(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(results),julia_to_cpp(flags)))
end
predict(cobj::Any, samples::UMat, results::UMat; flags::Int32 = 0) = predict(cobj, samples, results, flags)

function create(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_create(julia_to_cpp(cobj)))
end
create(cobj::Any; ) = create(cobj)

function getLearningRate(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_getLearningRate(julia_to_cpp(cobj)))
end
getLearningRate(cobj::Any; ) = getLearningRate(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function setMiniBatchSize(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_setMiniBatchSize(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setMiniBatchSize(cobj::Any, val::Int32; ) = setMiniBatchSize(cobj, val)

function setIterations(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_setIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setIterations(cobj::Any, val::Int32; ) = setIterations(cobj, val)

function setLearningRate(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_setLearningRate(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setLearningRate(cobj::Any, val::Float64; ) = setLearningRate(cobj, val)

function getRegularization(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_getRegularization(julia_to_cpp(cobj)))
end
getRegularization(cobj::Any; ) = getRegularization(cobj)

function getMiniBatchSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_getMiniBatchSize(julia_to_cpp(cobj)))
end
getMiniBatchSize(cobj::Any; ) = getMiniBatchSize(cobj)

function setRegularization(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_setRegularization(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setRegularization(cobj::Any, val::Int32; ) = setRegularization(cobj, val)

function get_learnt_thetas(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_get_learnt_thetas(julia_to_cpp(cobj)))
end
get_learnt_thetas(cobj::Any; ) = get_learnt_thetas(cobj)
function Base.getproperty(m::ml_ParamGrid, s::Symbol)
    if s==:minVal
        return cpp_to_julia(jlopencv_ml_ParamGrid_get_minVal(m))
    end
    if s==:maxVal
        return cpp_to_julia(jlopencv_ml_ParamGrid_get_maxVal(m))
    end
    if s==:logStep
        return cpp_to_julia(jlopencv_ml_ParamGrid_get_logStep(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_ParamGrid, s::Symbol, v)
    if s==:minVal
        jlopencv_ml_ParamGrid_set_minVal(m, julia_to_cpp(v, double))
    end
    if s==:maxVal
        jlopencv_ml_ParamGrid_set_maxVal(m, julia_to_cpp(v, double))
    end
    if s==:logStep
        jlopencv_ml_ParamGrid_set_logStep(m, julia_to_cpp(v, double))
    end
    return Base.setfield(m, s, v)
end

function create(cobj::Any, minVal::Float64, maxVal::Float64, logstep::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ParamGrid_create(julia_to_cpp(cobj),julia_to_cpp(minVal),julia_to_cpp(maxVal),julia_to_cpp(logstep)))
end
create(cobj::Any; minVal::Float64 = 0., maxVal::Float64 = 0., logstep::Float64 = 1.) = create(cobj, minVal, maxVal, logstep)
function Base.getproperty(m::ml_KNearest, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_KNearest, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setIsClassifier(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_setIsClassifier(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setIsClassifier(cobj::Any, val::Bool; ) = setIsClassifier(cobj, val)

function load(cobj::Any, filepath::String)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_load(julia_to_cpp(cobj),julia_to_cpp(filepath)))
end
load(cobj::Any, filepath::String; ) = load(cobj, filepath)

function getIsClassifier(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_getIsClassifier(julia_to_cpp(cobj)))
end
getIsClassifier(cobj::Any; ) = getIsClassifier(cobj)

function setAlgorithmType(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_setAlgorithmType(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setAlgorithmType(cobj::Any, val::Int32; ) = setAlgorithmType(cobj, val)

function setEmax(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_setEmax(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setEmax(cobj::Any, val::Int32; ) = setEmax(cobj, val)

function setDefaultK(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_setDefaultK(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setDefaultK(cobj::Any, val::Int32; ) = setDefaultK(cobj, val)

function getDefaultK(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_getDefaultK(julia_to_cpp(cobj)))
end
getDefaultK(cobj::Any; ) = getDefaultK(cobj)

function getEmax(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_getEmax(julia_to_cpp(cobj)))
end
getEmax(cobj::Any; ) = getEmax(cobj)

function getAlgorithmType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_getAlgorithmType(julia_to_cpp(cobj)))
end
getAlgorithmType(cobj::Any; ) = getAlgorithmType(cobj)

function create(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_create(julia_to_cpp(cobj)))
end
create(cobj::Any; ) = create(cobj)

function findNearest(cobj::Any, samples::Mat, k::Int32, results::Mat, neighborResponses::Mat, dist::Mat)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_findNearest(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(k),julia_to_cpp(results),julia_to_cpp(neighborResponses),julia_to_cpp(dist)))
end
findNearest(cobj::Any, samples::Mat, k::Int32, results::Mat, neighborResponses::Mat, dist::Mat; ) = findNearest(cobj, samples, k, results, neighborResponses, dist)

function findNearest(cobj::Any, samples::UMat, k::Int32, results::UMat, neighborResponses::UMat, dist::UMat)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_findNearest(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(k),julia_to_cpp(results),julia_to_cpp(neighborResponses),julia_to_cpp(dist)))
end
findNearest(cobj::Any, samples::UMat, k::Int32, results::UMat, neighborResponses::UMat, dist::UMat; ) = findNearest(cobj, samples, k, results, neighborResponses, dist)
function Base.getproperty(m::ml_SVMSGD, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_SVMSGD, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function load(cobj::Any, filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_load(julia_to_cpp(cobj),julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
load(cobj::Any, filepath::String; nodeName::String = String()) = load(cobj, filepath, nodeName)

function setMarginRegularization(cobj::Any, marginRegularization::Float32)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_setMarginRegularization(julia_to_cpp(cobj),julia_to_cpp(marginRegularization)))
end
setMarginRegularization(cobj::Any, marginRegularization::Float32; ) = setMarginRegularization(cobj, marginRegularization)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_getTermCriteria(julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function getWeights(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_getWeights(julia_to_cpp(cobj)))
end
getWeights(cobj::Any; ) = getWeights(cobj)

function create(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_create(julia_to_cpp(cobj)))
end
create(cobj::Any; ) = create(cobj)

function getInitialStepSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_getInitialStepSize(julia_to_cpp(cobj)))
end
getInitialStepSize(cobj::Any; ) = getInitialStepSize(cobj)

function getMarginRegularization(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_getMarginRegularization(julia_to_cpp(cobj)))
end
getMarginRegularization(cobj::Any; ) = getMarginRegularization(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function setInitialStepSize(cobj::Any, InitialStepSize::Float32)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_setInitialStepSize(julia_to_cpp(cobj),julia_to_cpp(InitialStepSize)))
end
setInitialStepSize(cobj::Any, InitialStepSize::Float32; ) = setInitialStepSize(cobj, InitialStepSize)

function getShift(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_getShift(julia_to_cpp(cobj)))
end
getShift(cobj::Any; ) = getShift(cobj)

function setSvmsgdType(cobj::Any, svmsgdType::Int32)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_setSvmsgdType(julia_to_cpp(cobj),julia_to_cpp(svmsgdType)))
end
setSvmsgdType(cobj::Any, svmsgdType::Int32; ) = setSvmsgdType(cobj, svmsgdType)

function getStepDecreasingPower(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_getStepDecreasingPower(julia_to_cpp(cobj)))
end
getStepDecreasingPower(cobj::Any; ) = getStepDecreasingPower(cobj)

function setMarginType(cobj::Any, marginType::Int32)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_setMarginType(julia_to_cpp(cobj),julia_to_cpp(marginType)))
end
setMarginType(cobj::Any, marginType::Int32; ) = setMarginType(cobj, marginType)

function setOptimalParameters(cobj::Any, svmsgdType::Int32, marginType::Int32)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_setOptimalParameters(julia_to_cpp(cobj),julia_to_cpp(svmsgdType),julia_to_cpp(marginType)))
end
setOptimalParameters(cobj::Any; svmsgdType::Int32 = SVMSGD::ASGD, marginType::Int32 = SVMSGD::SOFT_MARGIN) = setOptimalParameters(cobj, svmsgdType, marginType)

function getMarginType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_getMarginType(julia_to_cpp(cobj)))
end
getMarginType(cobj::Any; ) = getMarginType(cobj)

function setStepDecreasingPower(cobj::Any, stepDecreasingPower::Float32)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_setStepDecreasingPower(julia_to_cpp(cobj),julia_to_cpp(stepDecreasingPower)))
end
setStepDecreasingPower(cobj::Any, stepDecreasingPower::Float32; ) = setStepDecreasingPower(cobj, stepDecreasingPower)

function getSvmsgdType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_getSvmsgdType(julia_to_cpp(cobj)))
end
getSvmsgdType(cobj::Any; ) = getSvmsgdType(cobj)
function Base.getproperty(m::ml_DTrees, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_DTrees, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function load(cobj::Any, filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_load(julia_to_cpp(cobj),julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
load(cobj::Any, filepath::String; nodeName::String = String()) = load(cobj, filepath, nodeName)

function getUse1SERule(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_getUse1SERule(julia_to_cpp(cobj)))
end
getUse1SERule(cobj::Any; ) = getUse1SERule(cobj)

function getMinSampleCount(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_getMinSampleCount(julia_to_cpp(cobj)))
end
getMinSampleCount(cobj::Any; ) = getMinSampleCount(cobj)

function setTruncatePrunedTree(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_setTruncatePrunedTree(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setTruncatePrunedTree(cobj::Any, val::Bool; ) = setTruncatePrunedTree(cobj, val)

function setMaxDepth(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_setMaxDepth(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setMaxDepth(cobj::Any, val::Int32; ) = setMaxDepth(cobj, val)

function setMinSampleCount(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_setMinSampleCount(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setMinSampleCount(cobj::Any, val::Int32; ) = setMinSampleCount(cobj, val)

function getTruncatePrunedTree(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_getTruncatePrunedTree(julia_to_cpp(cobj)))
end
getTruncatePrunedTree(cobj::Any; ) = getTruncatePrunedTree(cobj)

function setMaxCategories(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_setMaxCategories(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setMaxCategories(cobj::Any, val::Int32; ) = setMaxCategories(cobj, val)

function setCVFolds(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_setCVFolds(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setCVFolds(cobj::Any, val::Int32; ) = setCVFolds(cobj, val)

function getPriors(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_getPriors(julia_to_cpp(cobj)))
end
getPriors(cobj::Any; ) = getPriors(cobj)

function getCVFolds(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_getCVFolds(julia_to_cpp(cobj)))
end
getCVFolds(cobj::Any; ) = getCVFolds(cobj)

function setUseSurrogates(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_setUseSurrogates(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setUseSurrogates(cobj::Any, val::Bool; ) = setUseSurrogates(cobj, val)

function setUse1SERule(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_setUse1SERule(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setUse1SERule(cobj::Any, val::Bool; ) = setUse1SERule(cobj, val)

function getMaxCategories(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_getMaxCategories(julia_to_cpp(cobj)))
end
getMaxCategories(cobj::Any; ) = getMaxCategories(cobj)

function getUseSurrogates(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_getUseSurrogates(julia_to_cpp(cobj)))
end
getUseSurrogates(cobj::Any; ) = getUseSurrogates(cobj)

function setRegressionAccuracy(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_setRegressionAccuracy(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setRegressionAccuracy(cobj::Any, val::Float32; ) = setRegressionAccuracy(cobj, val)

function getMaxDepth(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_getMaxDepth(julia_to_cpp(cobj)))
end
getMaxDepth(cobj::Any; ) = getMaxDepth(cobj)

function setPriors(cobj::Any, val::Mat)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_setPriors(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setPriors(cobj::Any, val::Mat; ) = setPriors(cobj, val)

function setPriors(cobj::Any, val::Mat)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_setPriors(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setPriors(cobj::Any, val::Mat; ) = setPriors(cobj, val)

function create(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_create(julia_to_cpp(cobj)))
end
create(cobj::Any; ) = create(cobj)

function getRegressionAccuracy(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_getRegressionAccuracy(julia_to_cpp(cobj)))
end
getRegressionAccuracy(cobj::Any; ) = getRegressionAccuracy(cobj)
function Base.getproperty(m::ml_ANN_MLP, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_ANN_MLP, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function load(cobj::Any, filepath::String)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_load(julia_to_cpp(cobj),julia_to_cpp(filepath)))
end
load(cobj::Any, filepath::String; ) = load(cobj, filepath)

function setAnnealFinalT(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setAnnealFinalT(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setAnnealFinalT(cobj::Any, val::Float64; ) = setAnnealFinalT(cobj, val)

function getTrainMethod(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getTrainMethod(julia_to_cpp(cobj)))
end
getTrainMethod(cobj::Any; ) = getTrainMethod(cobj)

function getRpropDWMinus(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getRpropDWMinus(julia_to_cpp(cobj)))
end
getRpropDWMinus(cobj::Any; ) = getRpropDWMinus(cobj)

function getRpropDWMin(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getRpropDWMin(julia_to_cpp(cobj)))
end
getRpropDWMin(cobj::Any; ) = getRpropDWMin(cobj)

function setRpropDWMinus(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setRpropDWMinus(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setRpropDWMinus(cobj::Any, val::Float64; ) = setRpropDWMinus(cobj, val)

function getRpropDWPlus(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getRpropDWPlus(julia_to_cpp(cobj)))
end
getRpropDWPlus(cobj::Any; ) = getRpropDWPlus(cobj)

function setBackpropWeightScale(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setBackpropWeightScale(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setBackpropWeightScale(cobj::Any, val::Float64; ) = setBackpropWeightScale(cobj, val)

function getAnnealInitialT(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getAnnealInitialT(julia_to_cpp(cobj)))
end
getAnnealInitialT(cobj::Any; ) = getAnnealInitialT(cobj)

function setRpropDWMin(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setRpropDWMin(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setRpropDWMin(cobj::Any, val::Float64; ) = setRpropDWMin(cobj, val)

function setActivationFunction(cobj::Any, type::Int32, param1::Float64, param2::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setActivationFunction(julia_to_cpp(cobj),julia_to_cpp(type),julia_to_cpp(param1),julia_to_cpp(param2)))
end
setActivationFunction(cobj::Any, type::Int32; param1::Float64 = 0, param2::Float64 = 0) = setActivationFunction(cobj, type, param1, param2)

function getBackpropMomentumScale(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getBackpropMomentumScale(julia_to_cpp(cobj)))
end
getBackpropMomentumScale(cobj::Any; ) = getBackpropMomentumScale(cobj)

function getRpropDWMax(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getRpropDWMax(julia_to_cpp(cobj)))
end
getRpropDWMax(cobj::Any; ) = getRpropDWMax(cobj)

function setRpropDWMax(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setRpropDWMax(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setRpropDWMax(cobj::Any, val::Float64; ) = setRpropDWMax(cobj, val)

function create(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_create(julia_to_cpp(cobj)))
end
create(cobj::Any; ) = create(cobj)

function setAnnealInitialT(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setAnnealInitialT(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setAnnealInitialT(cobj::Any, val::Float64; ) = setAnnealInitialT(cobj, val)

function setRpropDW0(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setRpropDW0(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setRpropDW0(cobj::Any, val::Float64; ) = setRpropDW0(cobj, val)

function setBackpropMomentumScale(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setBackpropMomentumScale(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setBackpropMomentumScale(cobj::Any, val::Float64; ) = setBackpropMomentumScale(cobj, val)

function getAnnealFinalT(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getAnnealFinalT(julia_to_cpp(cobj)))
end
getAnnealFinalT(cobj::Any; ) = getAnnealFinalT(cobj)

function setRpropDWPlus(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setRpropDWPlus(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setRpropDWPlus(cobj::Any, val::Float64; ) = setRpropDWPlus(cobj, val)

function setTrainMethod(cobj::Any, method::Int32, param1::Float64, param2::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setTrainMethod(julia_to_cpp(cobj),julia_to_cpp(method),julia_to_cpp(param1),julia_to_cpp(param2)))
end
setTrainMethod(cobj::Any, method::Int32; param1::Float64 = 0, param2::Float64 = 0) = setTrainMethod(cobj, method, param1, param2)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function setLayerSizes(cobj::Any, _layer_sizes::Mat)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setLayerSizes(julia_to_cpp(cobj),julia_to_cpp(_layer_sizes)))
end
setLayerSizes(cobj::Any, _layer_sizes::Mat; ) = setLayerSizes(cobj, _layer_sizes)

function setLayerSizes(cobj::Any, _layer_sizes::UMat)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setLayerSizes(julia_to_cpp(cobj),julia_to_cpp(_layer_sizes)))
end
setLayerSizes(cobj::Any, _layer_sizes::UMat; ) = setLayerSizes(cobj, _layer_sizes)

function getLayerSizes(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getLayerSizes(julia_to_cpp(cobj)))
end
getLayerSizes(cobj::Any; ) = getLayerSizes(cobj)

function setAnnealItePerStep(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setAnnealItePerStep(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setAnnealItePerStep(cobj::Any, val::Int32; ) = setAnnealItePerStep(cobj, val)

function getBackpropWeightScale(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getBackpropWeightScale(julia_to_cpp(cobj)))
end
getBackpropWeightScale(cobj::Any; ) = getBackpropWeightScale(cobj)

function getWeights(cobj::Any, layerIdx::Int32)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getWeights(julia_to_cpp(cobj),julia_to_cpp(layerIdx)))
end
getWeights(cobj::Any, layerIdx::Int32; ) = getWeights(cobj, layerIdx)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getTermCriteria(julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function getAnnealItePerStep(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getAnnealItePerStep(julia_to_cpp(cobj)))
end
getAnnealItePerStep(cobj::Any; ) = getAnnealItePerStep(cobj)

function setAnnealCoolingRatio(cobj::Any, val::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_setAnnealCoolingRatio(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setAnnealCoolingRatio(cobj::Any, val::Float64; ) = setAnnealCoolingRatio(cobj, val)

function getRpropDW0(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getRpropDW0(julia_to_cpp(cobj)))
end
getRpropDW0(cobj::Any; ) = getRpropDW0(cobj)

function getAnnealCoolingRatio(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_getAnnealCoolingRatio(julia_to_cpp(cobj)))
end
getAnnealCoolingRatio(cobj::Any; ) = getAnnealCoolingRatio(cobj)
function Base.getproperty(m::ml_StatModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_StatModel, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function isTrained(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_StatModel_isTrained(julia_to_cpp(cobj)))
end
isTrained(cobj::Any; ) = isTrained(cobj)

function isClassifier(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_StatModel_isClassifier(julia_to_cpp(cobj)))
end
isClassifier(cobj::Any; ) = isClassifier(cobj)

function predict(cobj::Any, samples::Mat, results::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_StatModel_predict(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(results),julia_to_cpp(flags)))
end
predict(cobj::Any, samples::Mat, results::Mat; flags::Int32 = 0) = predict(cobj, samples, results, flags)

function predict(cobj::Any, samples::UMat, results::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_StatModel_predict(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(results),julia_to_cpp(flags)))
end
predict(cobj::Any, samples::UMat, results::UMat; flags::Int32 = 0) = predict(cobj, samples, results, flags)

function calcError(cobj::Any, data::Ptr{TrainData}, test::Bool, resp::Mat)
	return cpp_to_julia(jlopencv_cv_ml_StatModel_calcError(julia_to_cpp(cobj),julia_to_cpp(data),julia_to_cpp(test),julia_to_cpp(resp)))
end
calcError(cobj::Any, data::Ptr{TrainData}, test::Bool, resp::Mat; ) = calcError(cobj, data, test, resp)

function calcError(cobj::Any, data::Ptr{TrainData}, test::Bool, resp::UMat)
	return cpp_to_julia(jlopencv_cv_ml_StatModel_calcError(julia_to_cpp(cobj),julia_to_cpp(data),julia_to_cpp(test),julia_to_cpp(resp)))
end
calcError(cobj::Any, data::Ptr{TrainData}, test::Bool, resp::UMat; ) = calcError(cobj, data, test, resp)

function getVarCount(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_StatModel_getVarCount(julia_to_cpp(cobj)))
end
getVarCount(cobj::Any; ) = getVarCount(cobj)

function train(cobj::Any, trainData::Ptr{TrainData}, flags::Int32)
	return cpp_to_julia(jlopencv_cv_ml_StatModel_train(julia_to_cpp(cobj),julia_to_cpp(trainData),julia_to_cpp(flags)))
end
train(cobj::Any, trainData::Ptr{TrainData}; flags::Int32 = 0) = train(cobj, trainData, flags)

function train(cobj::Any, samples::Mat, layout::Int32, responses::Mat)
	return cpp_to_julia(jlopencv_cv_ml_StatModel_train(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(layout),julia_to_cpp(responses)))
end
train(cobj::Any, samples::Mat, layout::Int32, responses::Mat; ) = train(cobj, samples, layout, responses)

function train(cobj::Any, samples::UMat, layout::Int32, responses::UMat)
	return cpp_to_julia(jlopencv_cv_ml_StatModel_train(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(layout),julia_to_cpp(responses)))
end
train(cobj::Any, samples::UMat, layout::Int32, responses::UMat; ) = train(cobj, samples, layout, responses)

function empty(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_StatModel_empty(julia_to_cpp(cobj)))
end
empty(cobj::Any; ) = empty(cobj)
function Base.getproperty(m::ml_RTrees, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ml_RTrees, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function load(cobj::Any, filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_RTrees_load(julia_to_cpp(cobj),julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
load(cobj::Any, filepath::String; nodeName::String = String()) = load(cobj, filepath, nodeName)

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_RTrees_getTermCriteria(julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function getVotes(cobj::Any, samples::Mat, flags::Int32, results::Mat)
	return cpp_to_julia(jlopencv_cv_ml_RTrees_getVotes(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(flags),julia_to_cpp(results)))
end
getVotes(cobj::Any, samples::Mat, flags::Int32, results::Mat; ) = getVotes(cobj, samples, flags, results)

function getVotes(cobj::Any, samples::UMat, flags::Int32, results::UMat)
	return cpp_to_julia(jlopencv_cv_ml_RTrees_getVotes(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(flags),julia_to_cpp(results)))
end
getVotes(cobj::Any, samples::UMat, flags::Int32, results::UMat; ) = getVotes(cobj, samples, flags, results)

function getCalculateVarImportance(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_RTrees_getCalculateVarImportance(julia_to_cpp(cobj)))
end
getCalculateVarImportance(cobj::Any; ) = getCalculateVarImportance(cobj)

function create(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_RTrees_create(julia_to_cpp(cobj)))
end
create(cobj::Any; ) = create(cobj)

function setCalculateVarImportance(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_ml_RTrees_setCalculateVarImportance(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setCalculateVarImportance(cobj::Any, val::Bool; ) = setCalculateVarImportance(cobj, val)

function getVarImportance(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_RTrees_getVarImportance(julia_to_cpp(cobj)))
end
getVarImportance(cobj::Any; ) = getVarImportance(cobj)

function setTermCriteria(cobj::Any, val::TermCriteria)
	return cpp_to_julia(jlopencv_cv_ml_RTrees_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setTermCriteria(cobj::Any, val::TermCriteria; ) = setTermCriteria(cobj, val)

function getActiveVarCount(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ml_RTrees_getActiveVarCount(julia_to_cpp(cobj)))
end
getActiveVarCount(cobj::Any; ) = getActiveVarCount(cobj)

function setActiveVarCount(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_ml_RTrees_setActiveVarCount(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setActiveVarCount(cobj::Any, val::Int32; ) = setActiveVarCount(cobj, val)

function NormalBayesClassifier_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_NormalBayesClassifier_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
NormalBayesClassifier_load(filepath::String; nodeName::String = String()) = NormalBayesClassifier_load(filepath, nodeName)

function KNearest_load(filepath::String)
	return cpp_to_julia(jlopencv_cv_ml_KNearest_load(julia_to_cpp(filepath)))
end
KNearest_load(filepath::String; ) = KNearest_load(filepath)

function SVM_load(filepath::String)
	return cpp_to_julia(jlopencv_cv_ml_SVM_load(julia_to_cpp(filepath)))
end
SVM_load(filepath::String; ) = SVM_load(filepath)

function EM_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_EM_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
EM_load(filepath::String; nodeName::String = String()) = EM_load(filepath, nodeName)

function DTrees_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_DTrees_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
DTrees_load(filepath::String; nodeName::String = String()) = DTrees_load(filepath, nodeName)

function RTrees_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_RTrees_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
RTrees_load(filepath::String; nodeName::String = String()) = RTrees_load(filepath, nodeName)

function Boost_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_Boost_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
Boost_load(filepath::String; nodeName::String = String()) = Boost_load(filepath, nodeName)

function ANN_MLP_load(filepath::String)
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_load(julia_to_cpp(filepath)))
end
ANN_MLP_load(filepath::String; ) = ANN_MLP_load(filepath)

function LogisticRegression_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
LogisticRegression_load(filepath::String; nodeName::String = String()) = LogisticRegression_load(filepath, nodeName)

function SVMSGD_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
SVMSGD_load(filepath::String; nodeName::String = String()) = SVMSGD_load(filepath, nodeName)

function SVM_getDefaultGridPtr(param_id::Int32)
	return cpp_to_julia(jlopencv_cv_ml_SVM_getDefaultGridPtr(julia_to_cpp(param_id)))
end
SVM_getDefaultGridPtr(param_id::Int32; ) = SVM_getDefaultGridPtr(param_id)

function ParamGrid_create(minVal::Float64, maxVal::Float64, logstep::Float64)
	return cpp_to_julia(jlopencv_cv_ml_ParamGrid_create(julia_to_cpp(minVal),julia_to_cpp(maxVal),julia_to_cpp(logstep)))
end
ParamGrid_create(; minVal::Float64 = 0., maxVal::Float64 = 0., logstep::Float64 = 1.) = ParamGrid_create(minVal, maxVal, logstep)

function TrainData_create(samples::Mat, layout::Int32, responses::Mat, varIdx::Mat, sampleIdx::Mat, sampleWeights::Mat, varType::Mat)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_create(julia_to_cpp(samples),julia_to_cpp(layout),julia_to_cpp(responses),julia_to_cpp(varIdx),julia_to_cpp(sampleIdx),julia_to_cpp(sampleWeights),julia_to_cpp(varType)))
end
TrainData_create(samples::Mat, layout::Int32, responses::Mat; varIdx::Mat = Mat(), sampleIdx::Mat = Mat(), sampleWeights::Mat = Mat(), varType::Mat = Mat()) = TrainData_create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType)

function TrainData_create(samples::UMat, layout::Int32, responses::UMat, varIdx::UMat, sampleIdx::UMat, sampleWeights::UMat, varType::UMat)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_create(julia_to_cpp(samples),julia_to_cpp(layout),julia_to_cpp(responses),julia_to_cpp(varIdx),julia_to_cpp(sampleIdx),julia_to_cpp(sampleWeights),julia_to_cpp(varType)))
end
TrainData_create(samples::UMat, layout::Int32, responses::UMat; varIdx::UMat = UMat(), sampleIdx::UMat = UMat(), sampleWeights::UMat = UMat(), varType::UMat = UMat()) = TrainData_create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType)

function NormalBayesClassifier_create()
	return cpp_to_julia(jlopencv_cv_ml_NormalBayesClassifier_create())
end
NormalBayesClassifier_create(; ) = NormalBayesClassifier_create()

function KNearest_create()
	return cpp_to_julia(jlopencv_cv_ml_KNearest_create())
end
KNearest_create(; ) = KNearest_create()

function SVM_create()
	return cpp_to_julia(jlopencv_cv_ml_SVM_create())
end
SVM_create(; ) = SVM_create()

function EM_create()
	return cpp_to_julia(jlopencv_cv_ml_EM_create())
end
EM_create(; ) = EM_create()

function DTrees_create()
	return cpp_to_julia(jlopencv_cv_ml_DTrees_create())
end
DTrees_create(; ) = DTrees_create()

function RTrees_create()
	return cpp_to_julia(jlopencv_cv_ml_RTrees_create())
end
RTrees_create(; ) = RTrees_create()

function Boost_create()
	return cpp_to_julia(jlopencv_cv_ml_Boost_create())
end
Boost_create(; ) = Boost_create()

function ANN_MLP_create()
	return cpp_to_julia(jlopencv_cv_ml_ANN_MLP_create())
end
ANN_MLP_create(; ) = ANN_MLP_create()

function LogisticRegression_create()
	return cpp_to_julia(jlopencv_cv_ml_LogisticRegression_create())
end
LogisticRegression_create(; ) = LogisticRegression_create()

function SVMSGD_create()
	return cpp_to_julia(jlopencv_cv_ml_SVMSGD_create())
end
SVMSGD_create(; ) = SVMSGD_create()

function TrainData_getSubVector(vec::Mat, idx::Mat)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getSubVector(julia_to_cpp(vec),julia_to_cpp(idx)))
end
TrainData_getSubVector(vec::Mat, idx::Mat; ) = TrainData_getSubVector(vec, idx)

function TrainData_getSubVector(vec::Mat, idx::Mat)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getSubVector(julia_to_cpp(vec),julia_to_cpp(idx)))
end
TrainData_getSubVector(vec::Mat, idx::Mat; ) = TrainData_getSubVector(vec, idx)

function TrainData_getSubMatrix(matrix::Mat, idx::Mat, layout::Int32)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getSubMatrix(julia_to_cpp(matrix),julia_to_cpp(idx),julia_to_cpp(layout)))
end
TrainData_getSubMatrix(matrix::Mat, idx::Mat, layout::Int32; ) = TrainData_getSubMatrix(matrix, idx, layout)

function TrainData_getSubMatrix(matrix::Mat, idx::Mat, layout::Int32)
	return cpp_to_julia(jlopencv_cv_ml_TrainData_getSubMatrix(julia_to_cpp(matrix),julia_to_cpp(idx),julia_to_cpp(layout)))
end
TrainData_getSubMatrix(matrix::Mat, idx::Mat, layout::Int32; ) = TrainData_getSubMatrix(matrix, idx, layout)

function undistortImage(distorted::Mat, K::Mat, D::Mat, undistorted::Mat, Knew::Mat, new_size::Size)
	return cpp_to_julia(jlopencv_cv_fisheye_undistortImage(julia_to_cpp(distorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(undistorted),julia_to_cpp(Knew),julia_to_cpp(new_size)))
end
undistortImage(distorted::Mat, K::Mat, D::Mat, undistorted::Mat; Knew::Mat = cv::Mat(), new_size::Size = Size()) = undistortImage(distorted, K, D, undistorted, Knew, new_size)

function undistortImage(distorted::UMat, K::UMat, D::UMat, undistorted::UMat, Knew::UMat, new_size::Size)
	return cpp_to_julia(jlopencv_cv_fisheye_undistortImage(julia_to_cpp(distorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(undistorted),julia_to_cpp(Knew),julia_to_cpp(new_size)))
end
undistortImage(distorted::UMat, K::UMat, D::UMat, undistorted::UMat; Knew::UMat = cv::UMat(), new_size::Size = Size()) = undistortImage(distorted, K, D, undistorted, Knew, new_size)

function initUndistortRectifyMap(K::Mat, D::Mat, R::Mat, P::Mat, size::Size, m1type::Int32, map1::Mat, map2::Mat)
	return cpp_to_julia(jlopencv_cv_fisheye_initUndistortRectifyMap(julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
initUndistortRectifyMap(K::Mat, D::Mat, R::Mat, P::Mat, size::Size, m1type::Int32, map1::Mat, map2::Mat; ) = initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2)

function initUndistortRectifyMap(K::UMat, D::UMat, R::UMat, P::UMat, size::Size, m1type::Int32, map1::UMat, map2::UMat)
	return cpp_to_julia(jlopencv_cv_fisheye_initUndistortRectifyMap(julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
initUndistortRectifyMap(K::UMat, D::UMat, R::UMat, P::UMat, size::Size, m1type::Int32, map1::UMat, map2::UMat; ) = initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2)

function undistortPoints(distorted::Mat, K::Mat, D::Mat, undistorted::Mat, R::Mat, P::Mat)
	return cpp_to_julia(jlopencv_cv_fisheye_undistortPoints(julia_to_cpp(distorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(undistorted),julia_to_cpp(R),julia_to_cpp(P)))
end
undistortPoints(distorted::Mat, K::Mat, D::Mat, undistorted::Mat; R::Mat = Mat(), P::Mat = Mat()) = undistortPoints(distorted, K, D, undistorted, R, P)

function undistortPoints(distorted::UMat, K::UMat, D::UMat, undistorted::UMat, R::UMat, P::UMat)
	return cpp_to_julia(jlopencv_cv_fisheye_undistortPoints(julia_to_cpp(distorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(undistorted),julia_to_cpp(R),julia_to_cpp(P)))
end
undistortPoints(distorted::UMat, K::UMat, D::UMat, undistorted::UMat; R::UMat = UMat(), P::UMat = UMat()) = undistortPoints(distorted, K, D, undistorted, R, P)

function projectPoints(objectPoints::Mat, rvec::Mat, tvec::Mat, K::Mat, D::Mat, imagePoints::Mat, alpha::Float64, jacobian::Mat)
	return cpp_to_julia(jlopencv_cv_fisheye_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(imagePoints),julia_to_cpp(alpha),julia_to_cpp(jacobian)))
end
projectPoints(objectPoints::Mat, rvec::Mat, tvec::Mat, K::Mat, D::Mat, imagePoints::Mat, alpha::Float64; alpha::Float64 = 0) = projectPoints(objectPoints, rvec, tvec, K, D, imagePoints, alpha, jacobian)

function projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, K::UMat, D::UMat, imagePoints::UMat, alpha::Float64, jacobian::UMat)
	return cpp_to_julia(jlopencv_cv_fisheye_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(imagePoints),julia_to_cpp(alpha),julia_to_cpp(jacobian)))
end
projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, K::UMat, D::UMat, imagePoints::UMat, alpha::Float64; alpha::Float64 = 0) = projectPoints(objectPoints, rvec, tvec, K, D, imagePoints, alpha, jacobian)

function estimateNewCameraMatrixForUndistortRectify(K::Mat, D::Mat, image_size::Size, R::Mat, P::Mat, balance::Float64, new_size::Size, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_estimateNewCameraMatrixForUndistortRectify(julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(image_size),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(balance),julia_to_cpp(new_size),julia_to_cpp(fov_scale)))
end
estimateNewCameraMatrixForUndistortRectify(K::Mat, D::Mat, image_size::Size, R::Mat, P::Mat; balance::Float64 = 0.0, new_size::Size = Size(), fov_scale::Float64 = 1.0) = estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale)

function estimateNewCameraMatrixForUndistortRectify(K::UMat, D::UMat, image_size::Size, R::UMat, P::UMat, balance::Float64, new_size::Size, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_estimateNewCameraMatrixForUndistortRectify(julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(image_size),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(balance),julia_to_cpp(new_size),julia_to_cpp(fov_scale)))
end
estimateNewCameraMatrixForUndistortRectify(K::UMat, D::UMat, image_size::Size, R::UMat, P::UMat; balance::Float64 = 0.0, new_size::Size = Size(), fov_scale::Float64 = 1.0) = estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale)

function calibrate(objectPoints::vector{Mat}, imagePoints::vector{Mat}, image_size::Size, K::Mat, D::Mat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_calibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(image_size),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrate(objectPoints::vector{Mat}, imagePoints::vector{Mat}, image_size::Size, K::Mat, D::Mat; flags::Int32 = 0, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = calibrate(objectPoints, imagePoints, image_size, K, D, flags, criteria)

function calibrate(objectPoints::vector{UMat}, imagePoints::vector{UMat}, image_size::Size, K::UMat, D::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_calibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(image_size),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrate(objectPoints::vector{UMat}, imagePoints::vector{UMat}, image_size::Size, K::UMat, D::UMat; flags::Int32 = 0, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = calibrate(objectPoints, imagePoints, image_size, K, D, flags, criteria)

function stereoRectify(K1::Mat, D1::Mat, K2::Mat, D2::Mat, imageSize::Size, R::Mat, tvec::Mat, flags::Int32, R1::Mat, R2::Mat, P1::Mat, P2::Mat, Q::Mat, newImageSize::Size, balance::Float64, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_stereoRectify(julia_to_cpp(K1),julia_to_cpp(D1),julia_to_cpp(K2),julia_to_cpp(D2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(tvec),julia_to_cpp(flags),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(newImageSize),julia_to_cpp(balance),julia_to_cpp(fov_scale)))
end
stereoRectify(K1::Mat, D1::Mat, K2::Mat, D2::Mat, imageSize::Size, R::Mat, tvec::Mat, flags::Int32, R1::Mat, R2::Mat, P1::Mat, P2::Mat, Q::Mat; newImageSize::Size = Size(), balance::Float64 = 0.0, fov_scale::Float64 = 1.0) = stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, flags, R1, R2, P1, P2, Q, newImageSize, balance, fov_scale)

function stereoRectify(K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, tvec::UMat, flags::Int32, R1::UMat, R2::UMat, P1::UMat, P2::UMat, Q::UMat, newImageSize::Size, balance::Float64, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_stereoRectify(julia_to_cpp(K1),julia_to_cpp(D1),julia_to_cpp(K2),julia_to_cpp(D2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(tvec),julia_to_cpp(flags),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(newImageSize),julia_to_cpp(balance),julia_to_cpp(fov_scale)))
end
stereoRectify(K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, tvec::UMat, flags::Int32, R1::UMat, R2::UMat, P1::UMat, P2::UMat, Q::UMat; newImageSize::Size = Size(), balance::Float64 = 0.0, fov_scale::Float64 = 1.0) = stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, flags, R1, R2, P1, P2, Q, newImageSize, balance, fov_scale)

function stereoCalibrate(objectPoints::vector{Mat}, imagePoints1::vector{Mat}, imagePoints2::vector{Mat}, K1::Mat, D1::Mat, K2::Mat, D2::Mat, imageSize::Size, R::Mat, T::Mat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(K1),julia_to_cpp(D1),julia_to_cpp(K2),julia_to_cpp(D2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::vector{Mat}, imagePoints1::vector{Mat}, imagePoints2::vector{Mat}, K1::Mat, D1::Mat, K2::Mat, D2::Mat, imageSize::Size, R::Mat, T::Mat; flags::Int32 = fisheye::CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, flags, criteria)

function stereoCalibrate(objectPoints::vector{UMat}, imagePoints1::vector{UMat}, imagePoints2::vector{UMat}, K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, T::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(K1),julia_to_cpp(D1),julia_to_cpp(K2),julia_to_cpp(D2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::vector{UMat}, imagePoints1::vector{UMat}, imagePoints2::vector{UMat}, K1::UMat, D1::UMat, K2::UMat, D2::UMat, imageSize::Size, R::UMat, T::UMat; flags::Int32 = fisheye::CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, flags, criteria)

function distortPoints(undistorted::Mat, K::Mat, D::Mat, distorted::Mat, alpha::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_distortPoints(julia_to_cpp(undistorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(distorted),julia_to_cpp(alpha)))
end
distortPoints(undistorted::Mat, K::Mat, D::Mat, distorted::Mat; alpha::Float64 = 0) = distortPoints(undistorted, K, D, distorted, alpha)

function distortPoints(undistorted::UMat, K::UMat, D::UMat, distorted::UMat, alpha::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_distortPoints(julia_to_cpp(undistorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(distorted),julia_to_cpp(alpha)))
end
distortPoints(undistorted::UMat, K::UMat, D::UMat, distorted::UMat; alpha::Float64 = 0) = distortPoints(undistorted, K, D, distorted, alpha)
function Base.getproperty(m::FarnebackOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FarnebackOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getFastPyramids(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_getFastPyramids(julia_to_cpp(cobj)))
end
getFastPyramids(cobj::Any; ) = getFastPyramids(cobj)

function getWinSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_getWinSize(julia_to_cpp(cobj)))
end
getWinSize(cobj::Any; ) = getWinSize(cobj)

function setNumIters(cobj::Any, numIters::Int32)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_setNumIters(julia_to_cpp(cobj),julia_to_cpp(numIters)))
end
setNumIters(cobj::Any, numIters::Int32; ) = setNumIters(cobj, numIters)

function getPolySigma(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_getPolySigma(julia_to_cpp(cobj)))
end
getPolySigma(cobj::Any; ) = getPolySigma(cobj)

function setNumLevels(cobj::Any, numLevels::Int32)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_setNumLevels(julia_to_cpp(cobj),julia_to_cpp(numLevels)))
end
setNumLevels(cobj::Any, numLevels::Int32; ) = setNumLevels(cobj, numLevels)

function create(cobj::Any, numLevels::Int32, pyrScale::Float64, fastPyramids::Bool, winSize::Int32, numIters::Int32, polyN::Int32, polySigma::Float64, flags::Int32)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_create(julia_to_cpp(cobj),julia_to_cpp(numLevels),julia_to_cpp(pyrScale),julia_to_cpp(fastPyramids),julia_to_cpp(winSize),julia_to_cpp(numIters),julia_to_cpp(polyN),julia_to_cpp(polySigma),julia_to_cpp(flags)))
end
create(cobj::Any; numLevels::Int32 = 5, pyrScale::Float64 = 0.5, fastPyramids::Bool = false, winSize::Int32 = 13, numIters::Int32 = 10, polyN::Int32 = 5, polySigma::Float64 = 1.1, flags::Int32 = 0) = create(cobj, numLevels, pyrScale, fastPyramids, winSize, numIters, polyN, polySigma, flags)

function getPolyN(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_getPolyN(julia_to_cpp(cobj)))
end
getPolyN(cobj::Any; ) = getPolyN(cobj)

function getNumIters(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_getNumIters(julia_to_cpp(cobj)))
end
getNumIters(cobj::Any; ) = getNumIters(cobj)

function getFlags(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_getFlags(julia_to_cpp(cobj)))
end
getFlags(cobj::Any; ) = getFlags(cobj)

function setPolySigma(cobj::Any, polySigma::Float64)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_setPolySigma(julia_to_cpp(cobj),julia_to_cpp(polySigma)))
end
setPolySigma(cobj::Any, polySigma::Float64; ) = setPolySigma(cobj, polySigma)

function setFastPyramids(cobj::Any, fastPyramids::Bool)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_setFastPyramids(julia_to_cpp(cobj),julia_to_cpp(fastPyramids)))
end
setFastPyramids(cobj::Any, fastPyramids::Bool; ) = setFastPyramids(cobj, fastPyramids)

function setPolyN(cobj::Any, polyN::Int32)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_setPolyN(julia_to_cpp(cobj),julia_to_cpp(polyN)))
end
setPolyN(cobj::Any, polyN::Int32; ) = setPolyN(cobj, polyN)

function setFlags(cobj::Any, flags::Int32)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_setFlags(julia_to_cpp(cobj),julia_to_cpp(flags)))
end
setFlags(cobj::Any, flags::Int32; ) = setFlags(cobj, flags)

function setPyrScale(cobj::Any, pyrScale::Float64)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_setPyrScale(julia_to_cpp(cobj),julia_to_cpp(pyrScale)))
end
setPyrScale(cobj::Any, pyrScale::Float64; ) = setPyrScale(cobj, pyrScale)

function getNumLevels(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_getNumLevels(julia_to_cpp(cobj)))
end
getNumLevels(cobj::Any; ) = getNumLevels(cobj)

function getPyrScale(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_getPyrScale(julia_to_cpp(cobj)))
end
getPyrScale(cobj::Any; ) = getPyrScale(cobj)

function setWinSize(cobj::Any, winSize::Int32)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_setWinSize(julia_to_cpp(cobj),julia_to_cpp(winSize)))
end
setWinSize(cobj::Any, winSize::Int32; ) = setWinSize(cobj, winSize)
function Base.getproperty(m::CirclesGridFinderParameters, s::Symbol)
    if s==:densityNeighborhoodSize
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_densityNeighborhoodSize(m))
    end
    if s==:minDensity
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minDensity(m))
    end
    if s==:kmeansAttempts
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_kmeansAttempts(m))
    end
    if s==:minDistanceToAddKeypoint
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minDistanceToAddKeypoint(m))
    end
    if s==:keypointScale
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_keypointScale(m))
    end
    if s==:minGraphConfidence
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minGraphConfidence(m))
    end
    if s==:vertexGain
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_vertexGain(m))
    end
    if s==:vertexPenalty
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_vertexPenalty(m))
    end
    if s==:existingVertexGain
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_existingVertexGain(m))
    end
    if s==:edgeGain
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_edgeGain(m))
    end
    if s==:edgePenalty
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_edgePenalty(m))
    end
    if s==:convexHullFactor
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_convexHullFactor(m))
    end
    if s==:minRNGEdgeSwitchDist
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minRNGEdgeSwitchDist(m))
    end
    if s==:squareSize
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_squareSize(m))
    end
    if s==:maxRectifiedDistance
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_maxRectifiedDistance(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::CirclesGridFinderParameters, s::Symbol, v)
    if s==:densityNeighborhoodSize
        jlopencv_CirclesGridFinderParameters_set_densityNeighborhoodSize(m, julia_to_cpp(v, Size2f))
    end
    if s==:minDensity
        jlopencv_CirclesGridFinderParameters_set_minDensity(m, julia_to_cpp(v, float))
    end
    if s==:kmeansAttempts
        jlopencv_CirclesGridFinderParameters_set_kmeansAttempts(m, julia_to_cpp(v, int))
    end
    if s==:minDistanceToAddKeypoint
        jlopencv_CirclesGridFinderParameters_set_minDistanceToAddKeypoint(m, julia_to_cpp(v, int))
    end
    if s==:keypointScale
        jlopencv_CirclesGridFinderParameters_set_keypointScale(m, julia_to_cpp(v, int))
    end
    if s==:minGraphConfidence
        jlopencv_CirclesGridFinderParameters_set_minGraphConfidence(m, julia_to_cpp(v, float))
    end
    if s==:vertexGain
        jlopencv_CirclesGridFinderParameters_set_vertexGain(m, julia_to_cpp(v, float))
    end
    if s==:vertexPenalty
        jlopencv_CirclesGridFinderParameters_set_vertexPenalty(m, julia_to_cpp(v, float))
    end
    if s==:existingVertexGain
        jlopencv_CirclesGridFinderParameters_set_existingVertexGain(m, julia_to_cpp(v, float))
    end
    if s==:edgeGain
        jlopencv_CirclesGridFinderParameters_set_edgeGain(m, julia_to_cpp(v, float))
    end
    if s==:edgePenalty
        jlopencv_CirclesGridFinderParameters_set_edgePenalty(m, julia_to_cpp(v, float))
    end
    if s==:convexHullFactor
        jlopencv_CirclesGridFinderParameters_set_convexHullFactor(m, julia_to_cpp(v, float))
    end
    if s==:minRNGEdgeSwitchDist
        jlopencv_CirclesGridFinderParameters_set_minRNGEdgeSwitchDist(m, julia_to_cpp(v, float))
    end
    if s==:squareSize
        jlopencv_CirclesGridFinderParameters_set_squareSize(m, julia_to_cpp(v, float))
    end
    if s==:maxRectifiedDistance
        jlopencv_CirclesGridFinderParameters_set_maxRectifiedDistance(m, julia_to_cpp(v, float))
    end
    return Base.setfield(m, s, v)
end
function Base.getproperty(m::BOWImgDescriptorExtractor, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWImgDescriptorExtractor, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setVocabulary(cobj::Any, vocabulary::Mat)
	return cpp_to_julia(jlopencv_cv_BOWImgDescriptorExtractor_setVocabulary(julia_to_cpp(cobj),julia_to_cpp(vocabulary)))
end
setVocabulary(cobj::Any, vocabulary::Mat; ) = setVocabulary(cobj, vocabulary)

function setVocabulary(cobj::Any, vocabulary::Mat)
	return cpp_to_julia(jlopencv_cv_BOWImgDescriptorExtractor_setVocabulary(julia_to_cpp(cobj),julia_to_cpp(vocabulary)))
end
setVocabulary(cobj::Any, vocabulary::Mat; ) = setVocabulary(cobj, vocabulary)

function compute(cobj::Any, image::Mat, keypoints::vector{KeyPoInt32}, imgDescriptor::Mat)
	return cpp_to_julia(jlopencv_cv_BOWImgDescriptorExtractor_compute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(imgDescriptor)))
end
compute(cobj::Any, image::Mat, keypoints::vector{KeyPoInt32}, imgDescriptor::Mat; ) = compute(cobj, image, keypoints, imgDescriptor)

function compute(cobj::Any, image::Mat, keypoints::vector{KeyPoInt32}, imgDescriptor::Mat)
	return cpp_to_julia(jlopencv_cv_BOWImgDescriptorExtractor_compute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(imgDescriptor)))
end
compute(cobj::Any, image::Mat, keypoints::vector{KeyPoInt32}, imgDescriptor::Mat; ) = compute(cobj, image, keypoints, imgDescriptor)

function getVocabulary(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BOWImgDescriptorExtractor_getVocabulary(julia_to_cpp(cobj)))
end
getVocabulary(cobj::Any; ) = getVocabulary(cobj)

function descriptorSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BOWImgDescriptorExtractor_descriptorSize(julia_to_cpp(cobj)))
end
descriptorSize(cobj::Any; ) = descriptorSize(cobj)

function descriptorType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BOWImgDescriptorExtractor_descriptorType(julia_to_cpp(cobj)))
end
descriptorType(cobj::Any; ) = descriptorType(cobj)
function Base.getproperty(m::DenseOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DenseOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function calc(cobj::Any, I0::Mat, I1::Mat, flow::Mat)
	return cpp_to_julia(jlopencv_cv_DenseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow)))
end
calc(cobj::Any, I0::Mat, I1::Mat, flow::Mat; ) = calc(cobj, I0, I1, flow)

function calc(cobj::Any, I0::UMat, I1::UMat, flow::UMat)
	return cpp_to_julia(jlopencv_cv_DenseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow)))
end
calc(cobj::Any, I0::UMat, I1::UMat, flow::UMat; ) = calc(cobj, I0, I1, flow)

function collectGarbage(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DenseOpticalFlow_collectGarbage(julia_to_cpp(cobj)))
end
collectGarbage(cobj::Any; ) = collectGarbage(cobj)
function Base.getproperty(m::BackgroundSubtractor, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BackgroundSubtractor, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function apply(cobj::Any, image::Mat, fgmask::Mat, learningRate::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractor_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::Any, image::Mat, fgmask::Mat; learningRate::Float64 = -1) = apply(cobj, image, fgmask, learningRate)

function apply(cobj::Any, image::UMat, fgmask::UMat, learningRate::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractor_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::Any, image::UMat, fgmask::UMat; learningRate::Float64 = -1) = apply(cobj, image, fgmask, learningRate)

function getBackgroundImage(cobj::Any, backgroundImage::Mat)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractor_getBackgroundImage(julia_to_cpp(cobj),julia_to_cpp(backgroundImage)))
end
getBackgroundImage(cobj::Any, backgroundImage::Mat; ) = getBackgroundImage(cobj, backgroundImage)

function getBackgroundImage(cobj::Any, backgroundImage::UMat)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractor_getBackgroundImage(julia_to_cpp(cobj),julia_to_cpp(backgroundImage)))
end
getBackgroundImage(cobj::Any, backgroundImage::UMat; ) = getBackgroundImage(cobj, backgroundImage)
function Base.getproperty(m::KeyPoint, s::Symbol)
    if s==:pt
        return cpp_to_julia(jlopencv_KeyPoint_get_pt(m))
    end
    if s==:size
        return cpp_to_julia(jlopencv_KeyPoint_get_size(m))
    end
    if s==:angle
        return cpp_to_julia(jlopencv_KeyPoint_get_angle(m))
    end
    if s==:response
        return cpp_to_julia(jlopencv_KeyPoint_get_response(m))
    end
    if s==:octave
        return cpp_to_julia(jlopencv_KeyPoint_get_octave(m))
    end
    if s==:class_id
        return cpp_to_julia(jlopencv_KeyPoint_get_class_id(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KeyPoint, s::Symbol, v)
    if s==:pt
        jlopencv_KeyPoint_set_pt(m, julia_to_cpp(v, Point2f))
    end
    if s==:size
        jlopencv_KeyPoint_set_size(m, julia_to_cpp(v, float))
    end
    if s==:angle
        jlopencv_KeyPoint_set_angle(m, julia_to_cpp(v, float))
    end
    if s==:response
        jlopencv_KeyPoint_set_response(m, julia_to_cpp(v, float))
    end
    if s==:octave
        jlopencv_KeyPoint_set_octave(m, julia_to_cpp(v, int))
    end
    if s==:class_id
        jlopencv_KeyPoint_set_class_id(m, julia_to_cpp(v, int))
    end
    return Base.setfield(m, s, v)
end

function convert(cobj::Any, keypoints::vector{KeyPoInt32}, keypointIndexes::vector{Int32})
	return cpp_to_julia(jlopencv_cv_KeyPoint_convert(julia_to_cpp(cobj),julia_to_cpp(keypoints),julia_to_cpp(keypointIndexes)))
end
convert(cobj::Any, keypoints::vector{KeyPoInt32}; keypointIndexes::vector{Int32} = std::vector<int>()) = convert(cobj, keypoints, keypointIndexes)

function convert(cobj::Any, points2f::vector{PoInt322f}, size::Float32, response::Float32, octave::Int32, class_id::Int32)
	return cpp_to_julia(jlopencv_cv_KeyPoint_convert(julia_to_cpp(cobj),julia_to_cpp(points2f),julia_to_cpp(size),julia_to_cpp(response),julia_to_cpp(octave),julia_to_cpp(class_id)))
end
convert(cobj::Any, points2f::vector{PoInt322f}; size::Float32 = 1, response::Float32 = 1, octave::Int32 = 0, class_id::Int32 = -1) = convert(cobj, points2f, size, response, octave, class_id)

function overlap(cobj::Any, kp1::KeyPoInt32, kp2::KeyPoInt32)
	return cpp_to_julia(jlopencv_cv_KeyPoint_overlap(julia_to_cpp(cobj),julia_to_cpp(kp1),julia_to_cpp(kp2)))
end
overlap(cobj::Any, kp1::KeyPoInt32, kp2::KeyPoInt32; ) = overlap(cobj, kp1, kp2)
function Base.getproperty(m::LineSegmentDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::LineSegmentDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function compareSegments(cobj::Any, size::Size, lines1::Mat, lines2::Mat, _image::Mat)
	return cpp_to_julia(jlopencv_cv_LineSegmentDetector_compareSegments(julia_to_cpp(cobj),julia_to_cpp(size),julia_to_cpp(lines1),julia_to_cpp(lines2),julia_to_cpp(_image)))
end
compareSegments(cobj::Any, size::Size, lines1::Mat, lines2::Mat; _image::Mat = Mat()) = compareSegments(cobj, size, lines1, lines2, _image)

function compareSegments(cobj::Any, size::Size, lines1::UMat, lines2::UMat, _image::UMat)
	return cpp_to_julia(jlopencv_cv_LineSegmentDetector_compareSegments(julia_to_cpp(cobj),julia_to_cpp(size),julia_to_cpp(lines1),julia_to_cpp(lines2),julia_to_cpp(_image)))
end
compareSegments(cobj::Any, size::Size, lines1::UMat, lines2::UMat; _image::UMat = UMat()) = compareSegments(cobj, size, lines1, lines2, _image)

function detect(cobj::Any, _image::Mat, _lines::Mat, width::Mat, prec::Mat, nfa::Mat)
	return cpp_to_julia(jlopencv_cv_LineSegmentDetector_detect(julia_to_cpp(cobj),julia_to_cpp(_image),julia_to_cpp(_lines),julia_to_cpp(width),julia_to_cpp(prec),julia_to_cpp(nfa)))
end
detect(cobj::Any, _image::Mat, _lines::Mat, width::Mat, prec::Mat, nfa::Mat; ) = detect(cobj, _image, _lines, width, prec, nfa)

function detect(cobj::Any, _image::UMat, _lines::UMat, width::UMat, prec::UMat, nfa::UMat)
	return cpp_to_julia(jlopencv_cv_LineSegmentDetector_detect(julia_to_cpp(cobj),julia_to_cpp(_image),julia_to_cpp(_lines),julia_to_cpp(width),julia_to_cpp(prec),julia_to_cpp(nfa)))
end
detect(cobj::Any, _image::UMat, _lines::UMat, width::UMat, prec::UMat, nfa::UMat; ) = detect(cobj, _image, _lines, width, prec, nfa)

function drawSegments(cobj::Any, _image::Mat, lines::Mat)
	return cpp_to_julia(jlopencv_cv_LineSegmentDetector_drawSegments(julia_to_cpp(cobj),julia_to_cpp(_image),julia_to_cpp(lines)))
end
drawSegments(cobj::Any, _image::Mat, lines::Mat; ) = drawSegments(cobj, _image, lines)

function drawSegments(cobj::Any, _image::UMat, lines::UMat)
	return cpp_to_julia(jlopencv_cv_LineSegmentDetector_drawSegments(julia_to_cpp(cobj),julia_to_cpp(_image),julia_to_cpp(lines)))
end
drawSegments(cobj::Any, _image::UMat, lines::UMat; ) = drawSegments(cobj, _image, lines)
function Base.getproperty(m::HOGDescriptor, s::Symbol)
    if s==:winSize
        return cpp_to_julia(jlopencv_HOGDescriptor_get_winSize(m))
    end
    if s==:blockSize
        return cpp_to_julia(jlopencv_HOGDescriptor_get_blockSize(m))
    end
    if s==:blockStride
        return cpp_to_julia(jlopencv_HOGDescriptor_get_blockStride(m))
    end
    if s==:cellSize
        return cpp_to_julia(jlopencv_HOGDescriptor_get_cellSize(m))
    end
    if s==:nbins
        return cpp_to_julia(jlopencv_HOGDescriptor_get_nbins(m))
    end
    if s==:derivAperture
        return cpp_to_julia(jlopencv_HOGDescriptor_get_derivAperture(m))
    end
    if s==:winSigma
        return cpp_to_julia(jlopencv_HOGDescriptor_get_winSigma(m))
    end
    if s==:histogramNormType
        return cpp_to_julia(jlopencv_HOGDescriptor_get_histogramNormType(m))
    end
    if s==:L2HysThreshold
        return cpp_to_julia(jlopencv_HOGDescriptor_get_L2HysThreshold(m))
    end
    if s==:gammaCorrection
        return cpp_to_julia(jlopencv_HOGDescriptor_get_gammaCorrection(m))
    end
    if s==:svmDetector
        return cpp_to_julia(jlopencv_HOGDescriptor_get_svmDetector(m))
    end
    if s==:nlevels
        return cpp_to_julia(jlopencv_HOGDescriptor_get_nlevels(m))
    end
    if s==:signedGradient
        return cpp_to_julia(jlopencv_HOGDescriptor_get_signedGradient(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::HOGDescriptor, s::Symbol, v)
    if s==:winSize
        jlopencv_HOGDescriptor_set_winSize(m, julia_to_cpp(v, Size))
    end
    if s==:blockSize
        jlopencv_HOGDescriptor_set_blockSize(m, julia_to_cpp(v, Size))
    end
    if s==:blockStride
        jlopencv_HOGDescriptor_set_blockStride(m, julia_to_cpp(v, Size))
    end
    if s==:cellSize
        jlopencv_HOGDescriptor_set_cellSize(m, julia_to_cpp(v, Size))
    end
    if s==:nbins
        jlopencv_HOGDescriptor_set_nbins(m, julia_to_cpp(v, int))
    end
    if s==:derivAperture
        jlopencv_HOGDescriptor_set_derivAperture(m, julia_to_cpp(v, int))
    end
    if s==:winSigma
        jlopencv_HOGDescriptor_set_winSigma(m, julia_to_cpp(v, double))
    end
    if s==:histogramNormType
        jlopencv_HOGDescriptor_set_histogramNormType(m, julia_to_cpp(v, HOGDescriptor_HistogramNormType))
    end
    if s==:L2HysThreshold
        jlopencv_HOGDescriptor_set_L2HysThreshold(m, julia_to_cpp(v, double))
    end
    if s==:gammaCorrection
        jlopencv_HOGDescriptor_set_gammaCorrection(m, julia_to_cpp(v, bool))
    end
    if s==:svmDetector
        jlopencv_HOGDescriptor_set_svmDetector(m, julia_to_cpp(v, vector_float))
    end
    if s==:nlevels
        jlopencv_HOGDescriptor_set_nlevels(m, julia_to_cpp(v, int))
    end
    if s==:signedGradient
        jlopencv_HOGDescriptor_set_signedGradient(m, julia_to_cpp(v, bool))
    end
    return Base.setfield(m, s, v)
end

function load(cobj::Any, filename::String, objname::String)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_load(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(objname)))
end
load(cobj::Any, filename::String; objname::String = String()) = load(cobj, filename, objname)

function detect(cobj::Any, img::Mat, hitThreshold::Float64, winStride::Size, padding::Size, searchLocations::vector{PoInt32})
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(hitThreshold),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(searchLocations)))
end
detect(cobj::Any, img::Mat; hitThreshold::Float64 = 0, winStride::Size = Size(), padding::Size = Size(), searchLocations::vector{PoInt32} = std::vector<Point>()) = detect(cobj, img, hitThreshold, winStride, padding, searchLocations)

function detect(cobj::Any, img::UMat, hitThreshold::Float64, winStride::Size, padding::Size, searchLocations::vector{PoInt32})
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(hitThreshold),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(searchLocations)))
end
detect(cobj::Any, img::UMat; hitThreshold::Float64 = 0, winStride::Size = Size(), padding::Size = Size(), searchLocations::vector{PoInt32} = std::vector<Point>()) = detect(cobj, img, hitThreshold, winStride, padding, searchLocations)

function compute(cobj::Any, img::Mat, winStride::Size, padding::Size, locations::vector{PoInt32})
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_compute(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(locations)))
end
compute(cobj::Any, img::Mat; winStride::Size = Size(), padding::Size = Size(), locations::vector{PoInt32} = std::vector<Point>()) = compute(cobj, img, winStride, padding, locations)

function compute(cobj::Any, img::UMat, winStride::Size, padding::Size, locations::vector{PoInt32})
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_compute(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(locations)))
end
compute(cobj::Any, img::UMat; winStride::Size = Size(), padding::Size = Size(), locations::vector{PoInt32} = std::vector<Point>()) = compute(cobj, img, winStride, padding, locations)

function getDefaultPeopleDetector(cobj::Any)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_getDefaultPeopleDetector(julia_to_cpp(cobj)))
end
getDefaultPeopleDetector(cobj::Any; ) = getDefaultPeopleDetector(cobj)

function getDaimlerPeopleDetector(cobj::Any)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_getDaimlerPeopleDetector(julia_to_cpp(cobj)))
end
getDaimlerPeopleDetector(cobj::Any; ) = getDaimlerPeopleDetector(cobj)

function checkDetectorSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_checkDetectorSize(julia_to_cpp(cobj)))
end
checkDetectorSize(cobj::Any; ) = checkDetectorSize(cobj)

function getWinSigma(cobj::Any)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_getWinSigma(julia_to_cpp(cobj)))
end
getWinSigma(cobj::Any; ) = getWinSigma(cobj)

function computeGradient(cobj::Any, img::Mat, grad::Mat, angleOfs::Mat, paddingTL::Size, paddingBR::Size)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_computeGradient(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(grad),julia_to_cpp(angleOfs),julia_to_cpp(paddingTL),julia_to_cpp(paddingBR)))
end
computeGradient(cobj::Any, img::Mat, grad::Mat, angleOfs::Mat; paddingTL::Size = Size(), paddingBR::Size = Size()) = computeGradient(cobj, img, grad, angleOfs, paddingTL, paddingBR)

function computeGradient(cobj::Any, img::UMat, grad::UMat, angleOfs::UMat, paddingTL::Size, paddingBR::Size)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_computeGradient(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(grad),julia_to_cpp(angleOfs),julia_to_cpp(paddingTL),julia_to_cpp(paddingBR)))
end
computeGradient(cobj::Any, img::UMat, grad::UMat, angleOfs::UMat; paddingTL::Size = Size(), paddingBR::Size = Size()) = computeGradient(cobj, img, grad, angleOfs, paddingTL, paddingBR)

function save(cobj::Any, filename::String, objname::String)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_save(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(objname)))
end
save(cobj::Any, filename::String; objname::String = String()) = save(cobj, filename, objname)

function setSVMDetector(cobj::Any, svmdetector::Mat)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_setSVMDetector(julia_to_cpp(cobj),julia_to_cpp(svmdetector)))
end
setSVMDetector(cobj::Any, svmdetector::Mat; ) = setSVMDetector(cobj, svmdetector)

function setSVMDetector(cobj::Any, svmdetector::UMat)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_setSVMDetector(julia_to_cpp(cobj),julia_to_cpp(svmdetector)))
end
setSVMDetector(cobj::Any, svmdetector::UMat; ) = setSVMDetector(cobj, svmdetector)

function getDescriptorSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_getDescriptorSize(julia_to_cpp(cobj)))
end
getDescriptorSize(cobj::Any; ) = getDescriptorSize(cobj)

function detectMultiScale(cobj::Any, img::Mat, hitThreshold::Float64, winStride::Size, padding::Size, scale::Float64, finalThreshold::Float64, useMeanshiftGrouping::Bool)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(hitThreshold),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(scale),julia_to_cpp(finalThreshold),julia_to_cpp(useMeanshiftGrouping)))
end
detectMultiScale(cobj::Any, img::Mat; hitThreshold::Float64 = 0, winStride::Size = Size(), padding::Size = Size(), scale::Float64 = 1.05, finalThreshold::Float64 = 2.0, useMeanshiftGrouping::Bool = false) = detectMultiScale(cobj, img, hitThreshold, winStride, padding, scale, finalThreshold, useMeanshiftGrouping)

function detectMultiScale(cobj::Any, img::UMat, hitThreshold::Float64, winStride::Size, padding::Size, scale::Float64, finalThreshold::Float64, useMeanshiftGrouping::Bool)
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(hitThreshold),julia_to_cpp(winStride),julia_to_cpp(padding),julia_to_cpp(scale),julia_to_cpp(finalThreshold),julia_to_cpp(useMeanshiftGrouping)))
end
detectMultiScale(cobj::Any, img::UMat; hitThreshold::Float64 = 0, winStride::Size = Size(), padding::Size = Size(), scale::Float64 = 1.05, finalThreshold::Float64 = 2.0, useMeanshiftGrouping::Bool = false) = detectMultiScale(cobj, img, hitThreshold, winStride, padding, scale, finalThreshold, useMeanshiftGrouping)
function Base.getproperty(m::KAZE, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KAZE, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setExtended(cobj::Any, extended::Bool)
	return cpp_to_julia(jlopencv_cv_KAZE_setExtended(julia_to_cpp(cobj),julia_to_cpp(extended)))
end
setExtended(cobj::Any, extended::Bool; ) = setExtended(cobj, extended)

function setNOctaveLayers(cobj::Any, octaveLayers::Int32)
	return cpp_to_julia(jlopencv_cv_KAZE_setNOctaveLayers(julia_to_cpp(cobj),julia_to_cpp(octaveLayers)))
end
setNOctaveLayers(cobj::Any, octaveLayers::Int32; ) = setNOctaveLayers(cobj, octaveLayers)

function getNOctaves(cobj::Any)
	return cpp_to_julia(jlopencv_cv_KAZE_getNOctaves(julia_to_cpp(cobj)))
end
getNOctaves(cobj::Any; ) = getNOctaves(cobj)

function getNOctaveLayers(cobj::Any)
	return cpp_to_julia(jlopencv_cv_KAZE_getNOctaveLayers(julia_to_cpp(cobj)))
end
getNOctaveLayers(cobj::Any; ) = getNOctaveLayers(cobj)

function setNOctaves(cobj::Any, octaves::Int32)
	return cpp_to_julia(jlopencv_cv_KAZE_setNOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end
setNOctaves(cobj::Any, octaves::Int32; ) = setNOctaves(cobj, octaves)

function getUpright(cobj::Any)
	return cpp_to_julia(jlopencv_cv_KAZE_getUpright(julia_to_cpp(cobj)))
end
getUpright(cobj::Any; ) = getUpright(cobj)

function create(cobj::Any, extended::Bool, upright::Bool, threshold::Float32, nOctaves::Int32, nOctaveLayers::Int32, diffusivity::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_KAZE_create(julia_to_cpp(cobj),julia_to_cpp(extended),julia_to_cpp(upright),julia_to_cpp(threshold),julia_to_cpp(nOctaves),julia_to_cpp(nOctaveLayers),julia_to_cpp(diffusivity)))
end
create(cobj::Any; extended::Bool = false, upright::Bool = false, threshold::Float32 = 0.001f, nOctaves::Int32 = 4, nOctaveLayers::Int32 = 4, diffusivity::KAZE_DiffusivityType = KAZE::DIFF_PM_G2) = create(cobj, extended, upright, threshold, nOctaves, nOctaveLayers, diffusivity)

function getExtended(cobj::Any)
	return cpp_to_julia(jlopencv_cv_KAZE_getExtended(julia_to_cpp(cobj)))
end
getExtended(cobj::Any; ) = getExtended(cobj)

function setUpright(cobj::Any, upright::Bool)
	return cpp_to_julia(jlopencv_cv_KAZE_setUpright(julia_to_cpp(cobj),julia_to_cpp(upright)))
end
setUpright(cobj::Any, upright::Bool; ) = setUpright(cobj, upright)

function setDiffusivity(cobj::Any, diff::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_KAZE_setDiffusivity(julia_to_cpp(cobj),julia_to_cpp(diff)))
end
setDiffusivity(cobj::Any, diff::KAZE_DiffusivityType; ) = setDiffusivity(cobj, diff)

function getThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_KAZE_getThreshold(julia_to_cpp(cobj)))
end
getThreshold(cobj::Any; ) = getThreshold(cobj)

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_KAZE_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)

function getDiffusivity(cobj::Any)
	return cpp_to_julia(jlopencv_cv_KAZE_getDiffusivity(julia_to_cpp(cobj)))
end
getDiffusivity(cobj::Any; ) = getDiffusivity(cobj)

function setThreshold(cobj::Any, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_KAZE_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setThreshold(cobj::Any, threshold::Float64; ) = setThreshold(cobj, threshold)
function Base.getproperty(m::BackgroundSubtractorMOG2, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BackgroundSubtractorMOG2, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDetectShadows(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_getDetectShadows(julia_to_cpp(cobj)))
end
getDetectShadows(cobj::Any; ) = getDetectShadows(cobj)

function getVarInit(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_getVarInit(julia_to_cpp(cobj)))
end
getVarInit(cobj::Any; ) = getVarInit(cobj)

function setVarMax(cobj::Any, varMax::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_setVarMax(julia_to_cpp(cobj),julia_to_cpp(varMax)))
end
setVarMax(cobj::Any, varMax::Float64; ) = setVarMax(cobj, varMax)

function setBackgroundRatio(cobj::Any, ratio::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_setBackgroundRatio(julia_to_cpp(cobj),julia_to_cpp(ratio)))
end
setBackgroundRatio(cobj::Any, ratio::Float64; ) = setBackgroundRatio(cobj, ratio)

function apply(cobj::Any, image::Mat, fgmask::Mat, learningRate::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::Any, image::Mat, fgmask::Mat; learningRate::Float64 = -1) = apply(cobj, image, fgmask, learningRate)

function apply(cobj::Any, image::UMat, fgmask::UMat, learningRate::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::Any, image::UMat, fgmask::UMat; learningRate::Float64 = -1) = apply(cobj, image, fgmask, learningRate)

function getShadowThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_getShadowThreshold(julia_to_cpp(cobj)))
end
getShadowThreshold(cobj::Any; ) = getShadowThreshold(cobj)

function getNMixtures(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_getNMixtures(julia_to_cpp(cobj)))
end
getNMixtures(cobj::Any; ) = getNMixtures(cobj)

function getComplexityReductionThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_getComplexityReductionThreshold(julia_to_cpp(cobj)))
end
getComplexityReductionThreshold(cobj::Any; ) = getComplexityReductionThreshold(cobj)

function setNMixtures(cobj::Any, nmixtures::Int32)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_setNMixtures(julia_to_cpp(cobj),julia_to_cpp(nmixtures)))
end
setNMixtures(cobj::Any, nmixtures::Int32; ) = setNMixtures(cobj, nmixtures)

function setVarInit(cobj::Any, varInit::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_setVarInit(julia_to_cpp(cobj),julia_to_cpp(varInit)))
end
setVarInit(cobj::Any, varInit::Float64; ) = setVarInit(cobj, varInit)

function getShadowValue(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_getShadowValue(julia_to_cpp(cobj)))
end
getShadowValue(cobj::Any; ) = getShadowValue(cobj)

function setDetectShadows(cobj::Any, detectShadows::Bool)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_setDetectShadows(julia_to_cpp(cobj),julia_to_cpp(detectShadows)))
end
setDetectShadows(cobj::Any, detectShadows::Bool; ) = setDetectShadows(cobj, detectShadows)

function getVarMin(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_getVarMin(julia_to_cpp(cobj)))
end
getVarMin(cobj::Any; ) = getVarMin(cobj)

function setVarMin(cobj::Any, varMin::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_setVarMin(julia_to_cpp(cobj),julia_to_cpp(varMin)))
end
setVarMin(cobj::Any, varMin::Float64; ) = setVarMin(cobj, varMin)

function setHistory(cobj::Any, history::Int32)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_setHistory(julia_to_cpp(cobj),julia_to_cpp(history)))
end
setHistory(cobj::Any, history::Int32; ) = setHistory(cobj, history)

function setVarThreshold(cobj::Any, varThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_setVarThreshold(julia_to_cpp(cobj),julia_to_cpp(varThreshold)))
end
setVarThreshold(cobj::Any, varThreshold::Float64; ) = setVarThreshold(cobj, varThreshold)

function getVarThresholdGen(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_getVarThresholdGen(julia_to_cpp(cobj)))
end
getVarThresholdGen(cobj::Any; ) = getVarThresholdGen(cobj)

function setShadowThreshold(cobj::Any, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_setShadowThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setShadowThreshold(cobj::Any, threshold::Float64; ) = setShadowThreshold(cobj, threshold)

function getVarMax(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_getVarMax(julia_to_cpp(cobj)))
end
getVarMax(cobj::Any; ) = getVarMax(cobj)

function getBackgroundRatio(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_getBackgroundRatio(julia_to_cpp(cobj)))
end
getBackgroundRatio(cobj::Any; ) = getBackgroundRatio(cobj)

function setVarThresholdGen(cobj::Any, varThresholdGen::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_setVarThresholdGen(julia_to_cpp(cobj),julia_to_cpp(varThresholdGen)))
end
setVarThresholdGen(cobj::Any, varThresholdGen::Float64; ) = setVarThresholdGen(cobj, varThresholdGen)

function getHistory(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_getHistory(julia_to_cpp(cobj)))
end
getHistory(cobj::Any; ) = getHistory(cobj)

function setShadowValue(cobj::Any, value::Int32)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_setShadowValue(julia_to_cpp(cobj),julia_to_cpp(value)))
end
setShadowValue(cobj::Any, value::Int32; ) = setShadowValue(cobj, value)

function setComplexityReductionThreshold(cobj::Any, ct::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_setComplexityReductionThreshold(julia_to_cpp(cobj),julia_to_cpp(ct)))
end
setComplexityReductionThreshold(cobj::Any, ct::Float64; ) = setComplexityReductionThreshold(cobj, ct)

function getVarThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorMOG2_getVarThreshold(julia_to_cpp(cobj)))
end
getVarThreshold(cobj::Any; ) = getVarThreshold(cobj)
function Base.getproperty(m::BOWKMeansTrainer, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWKMeansTrainer, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function cluster(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BOWKMeansTrainer_cluster(julia_to_cpp(cobj)))
end
cluster(cobj::Any; ) = cluster(cobj)

function cluster(cobj::Any, descriptors::Mat)
	return cpp_to_julia(jlopencv_cv_BOWKMeansTrainer_cluster(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
cluster(cobj::Any, descriptors::Mat; ) = cluster(cobj, descriptors)

function cluster(cobj::Any, descriptors::Mat)
	return cpp_to_julia(jlopencv_cv_BOWKMeansTrainer_cluster(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
cluster(cobj::Any, descriptors::Mat; ) = cluster(cobj, descriptors)
function Base.getproperty(m::StereoMatcher, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::StereoMatcher, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getSpeckleRange(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_getSpeckleRange(julia_to_cpp(cobj)))
end
getSpeckleRange(cobj::Any; ) = getSpeckleRange(cobj)

function getMinDisparity(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_getMinDisparity(julia_to_cpp(cobj)))
end
getMinDisparity(cobj::Any; ) = getMinDisparity(cobj)

function setSpeckleRange(cobj::Any, speckleRange::Int32)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_setSpeckleRange(julia_to_cpp(cobj),julia_to_cpp(speckleRange)))
end
setSpeckleRange(cobj::Any, speckleRange::Int32; ) = setSpeckleRange(cobj, speckleRange)

function setMinDisparity(cobj::Any, minDisparity::Int32)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_setMinDisparity(julia_to_cpp(cobj),julia_to_cpp(minDisparity)))
end
setMinDisparity(cobj::Any, minDisparity::Int32; ) = setMinDisparity(cobj, minDisparity)

function setSpeckleWindowSize(cobj::Any, speckleWindowSize::Int32)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_setSpeckleWindowSize(julia_to_cpp(cobj),julia_to_cpp(speckleWindowSize)))
end
setSpeckleWindowSize(cobj::Any, speckleWindowSize::Int32; ) = setSpeckleWindowSize(cobj, speckleWindowSize)

function setBlockSize(cobj::Any, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_setBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end
setBlockSize(cobj::Any, blockSize::Int32; ) = setBlockSize(cobj, blockSize)

function getDisp12MaxDiff(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_getDisp12MaxDiff(julia_to_cpp(cobj)))
end
getDisp12MaxDiff(cobj::Any; ) = getDisp12MaxDiff(cobj)

function getNumDisparities(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_getNumDisparities(julia_to_cpp(cobj)))
end
getNumDisparities(cobj::Any; ) = getNumDisparities(cobj)

function setDisp12MaxDiff(cobj::Any, disp12MaxDiff::Int32)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_setDisp12MaxDiff(julia_to_cpp(cobj),julia_to_cpp(disp12MaxDiff)))
end
setDisp12MaxDiff(cobj::Any, disp12MaxDiff::Int32; ) = setDisp12MaxDiff(cobj, disp12MaxDiff)

function getSpeckleWindowSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_getSpeckleWindowSize(julia_to_cpp(cobj)))
end
getSpeckleWindowSize(cobj::Any; ) = getSpeckleWindowSize(cobj)

function getBlockSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_getBlockSize(julia_to_cpp(cobj)))
end
getBlockSize(cobj::Any; ) = getBlockSize(cobj)

function compute(cobj::Any, left::Mat, right::Mat, disparity::Mat)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_compute(julia_to_cpp(cobj),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(disparity)))
end
compute(cobj::Any, left::Mat, right::Mat, disparity::Mat; ) = compute(cobj, left, right, disparity)

function compute(cobj::Any, left::UMat, right::UMat, disparity::UMat)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_compute(julia_to_cpp(cobj),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(disparity)))
end
compute(cobj::Any, left::UMat, right::UMat, disparity::UMat; ) = compute(cobj, left, right, disparity)

function setNumDisparities(cobj::Any, numDisparities::Int32)
	return cpp_to_julia(jlopencv_cv_StereoMatcher_setNumDisparities(julia_to_cpp(cobj),julia_to_cpp(numDisparities)))
end
setNumDisparities(cobj::Any, numDisparities::Int32; ) = setNumDisparities(cobj, numDisparities)
function Base.getproperty(m::StereoSGBM, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::StereoSGBM, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getP1(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoSGBM_getP1(julia_to_cpp(cobj)))
end
getP1(cobj::Any; ) = getP1(cobj)

function getMode(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoSGBM_getMode(julia_to_cpp(cobj)))
end
getMode(cobj::Any; ) = getMode(cobj)

function getP2(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoSGBM_getP2(julia_to_cpp(cobj)))
end
getP2(cobj::Any; ) = getP2(cobj)

function setP1(cobj::Any, P1::Int32)
	return cpp_to_julia(jlopencv_cv_StereoSGBM_setP1(julia_to_cpp(cobj),julia_to_cpp(P1)))
end
setP1(cobj::Any, P1::Int32; ) = setP1(cobj, P1)

function setP2(cobj::Any, P2::Int32)
	return cpp_to_julia(jlopencv_cv_StereoSGBM_setP2(julia_to_cpp(cobj),julia_to_cpp(P2)))
end
setP2(cobj::Any, P2::Int32; ) = setP2(cobj, P2)

function create(cobj::Any, minDisparity::Int32, numDisparities::Int32, blockSize::Int32, P1::Int32, P2::Int32, disp12MaxDiff::Int32, preFilterCap::Int32, uniquenessRatio::Int32, speckleWindowSize::Int32, speckleRange::Int32, mode::Int32)
	return cpp_to_julia(jlopencv_cv_StereoSGBM_create(julia_to_cpp(cobj),julia_to_cpp(minDisparity),julia_to_cpp(numDisparities),julia_to_cpp(blockSize),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(disp12MaxDiff),julia_to_cpp(preFilterCap),julia_to_cpp(uniquenessRatio),julia_to_cpp(speckleWindowSize),julia_to_cpp(speckleRange),julia_to_cpp(mode)))
end
create(cobj::Any; minDisparity::Int32 = 0, numDisparities::Int32 = 16, blockSize::Int32 = 3, P1::Int32 = 0, P2::Int32 = 0, disp12MaxDiff::Int32 = 0, preFilterCap::Int32 = 0, uniquenessRatio::Int32 = 0, speckleWindowSize::Int32 = 0, speckleRange::Int32 = 0, mode::Int32 = StereoSGBM::MODE_SGBM) = create(cobj, minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio, speckleWindowSize, speckleRange, mode)

function setPreFilterCap(cobj::Any, preFilterCap::Int32)
	return cpp_to_julia(jlopencv_cv_StereoSGBM_setPreFilterCap(julia_to_cpp(cobj),julia_to_cpp(preFilterCap)))
end
setPreFilterCap(cobj::Any, preFilterCap::Int32; ) = setPreFilterCap(cobj, preFilterCap)

function setMode(cobj::Any, mode::Int32)
	return cpp_to_julia(jlopencv_cv_StereoSGBM_setMode(julia_to_cpp(cobj),julia_to_cpp(mode)))
end
setMode(cobj::Any, mode::Int32; ) = setMode(cobj, mode)

function getUniquenessRatio(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoSGBM_getUniquenessRatio(julia_to_cpp(cobj)))
end
getUniquenessRatio(cobj::Any; ) = getUniquenessRatio(cobj)

function getPreFilterCap(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoSGBM_getPreFilterCap(julia_to_cpp(cobj)))
end
getPreFilterCap(cobj::Any; ) = getPreFilterCap(cobj)

function setUniquenessRatio(cobj::Any, uniquenessRatio::Int32)
	return cpp_to_julia(jlopencv_cv_StereoSGBM_setUniquenessRatio(julia_to_cpp(cobj),julia_to_cpp(uniquenessRatio)))
end
setUniquenessRatio(cobj::Any, uniquenessRatio::Int32; ) = setUniquenessRatio(cobj, uniquenessRatio)
function Base.getproperty(m::CLAHE, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::CLAHE, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setTilesGridSize(cobj::Any, tileGridSize::Size)
	return cpp_to_julia(jlopencv_cv_CLAHE_setTilesGridSize(julia_to_cpp(cobj),julia_to_cpp(tileGridSize)))
end
setTilesGridSize(cobj::Any, tileGridSize::Size; ) = setTilesGridSize(cobj, tileGridSize)

function collectGarbage(cobj::Any)
	return cpp_to_julia(jlopencv_cv_CLAHE_collectGarbage(julia_to_cpp(cobj)))
end
collectGarbage(cobj::Any; ) = collectGarbage(cobj)

function setClipLimit(cobj::Any, clipLimit::Float64)
	return cpp_to_julia(jlopencv_cv_CLAHE_setClipLimit(julia_to_cpp(cobj),julia_to_cpp(clipLimit)))
end
setClipLimit(cobj::Any, clipLimit::Float64; ) = setClipLimit(cobj, clipLimit)

function getTilesGridSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_CLAHE_getTilesGridSize(julia_to_cpp(cobj)))
end
getTilesGridSize(cobj::Any; ) = getTilesGridSize(cobj)

function getClipLimit(cobj::Any)
	return cpp_to_julia(jlopencv_cv_CLAHE_getClipLimit(julia_to_cpp(cobj)))
end
getClipLimit(cobj::Any; ) = getClipLimit(cobj)

function apply(cobj::Any, src::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_CLAHE_apply(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
apply(cobj::Any, src::Mat, dst::Mat; ) = apply(cobj, src, dst)

function apply(cobj::Any, src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_CLAHE_apply(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
apply(cobj::Any, src::UMat, dst::UMat; ) = apply(cobj, src, dst)
function Base.getproperty(m::BFMatcher, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BFMatcher, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function create(cobj::Any, normType::Int32, crossCheck::Bool)
	return cpp_to_julia(jlopencv_cv_BFMatcher_create(julia_to_cpp(cobj),julia_to_cpp(normType),julia_to_cpp(crossCheck)))
end
create(cobj::Any; normType::Int32 = NORM_L2, crossCheck::Bool = false) = create(cobj, normType, crossCheck)
function Base.getproperty(m::Subdiv2D, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Subdiv2D, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function locate(cobj::Any, pt::PoInt322f)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_locate(julia_to_cpp(cobj),julia_to_cpp(pt)))
end
locate(cobj::Any, pt::PoInt322f; ) = locate(cobj, pt)

function initDelaunay(cobj::Any, rect::Rect)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_initDelaunay(julia_to_cpp(cobj),julia_to_cpp(rect)))
end
initDelaunay(cobj::Any, rect::Rect; ) = initDelaunay(cobj, rect)

function edgeOrg(cobj::Any, edge::Int32)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_edgeOrg(julia_to_cpp(cobj),julia_to_cpp(edge)))
end
edgeOrg(cobj::Any, edge::Int32; ) = edgeOrg(cobj, edge)

function rotateEdge(cobj::Any, edge::Int32, rotate::Int32)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_rotateEdge(julia_to_cpp(cobj),julia_to_cpp(edge),julia_to_cpp(rotate)))
end
rotateEdge(cobj::Any, edge::Int32, rotate::Int32; ) = rotateEdge(cobj, edge, rotate)

function insert(cobj::Any, pt::PoInt322f)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_insert(julia_to_cpp(cobj),julia_to_cpp(pt)))
end
insert(cobj::Any, pt::PoInt322f; ) = insert(cobj, pt)

function insert(cobj::Any, ptvec::vector{PoInt322f})
	return cpp_to_julia(jlopencv_cv_Subdiv2D_insert(julia_to_cpp(cobj),julia_to_cpp(ptvec)))
end
insert(cobj::Any, ptvec::vector{PoInt322f}; ) = insert(cobj, ptvec)

function getEdge(cobj::Any, edge::Int32, nextEdgeType::Int32)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_getEdge(julia_to_cpp(cobj),julia_to_cpp(edge),julia_to_cpp(nextEdgeType)))
end
getEdge(cobj::Any, edge::Int32, nextEdgeType::Int32; ) = getEdge(cobj, edge, nextEdgeType)

function getLeadingEdgeList(cobj::Any)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_getLeadingEdgeList(julia_to_cpp(cobj)))
end
getLeadingEdgeList(cobj::Any; ) = getLeadingEdgeList(cobj)

function nextEdge(cobj::Any, edge::Int32)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_nextEdge(julia_to_cpp(cobj),julia_to_cpp(edge)))
end
nextEdge(cobj::Any, edge::Int32; ) = nextEdge(cobj, edge)

function edgeDst(cobj::Any, edge::Int32)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_edgeDst(julia_to_cpp(cobj),julia_to_cpp(edge)))
end
edgeDst(cobj::Any, edge::Int32; ) = edgeDst(cobj, edge)

function getEdgeList(cobj::Any)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_getEdgeList(julia_to_cpp(cobj)))
end
getEdgeList(cobj::Any; ) = getEdgeList(cobj)

function getVertex(cobj::Any, vertex::Int32)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_getVertex(julia_to_cpp(cobj),julia_to_cpp(vertex)))
end
getVertex(cobj::Any, vertex::Int32; ) = getVertex(cobj, vertex)

function getVoronoiFacetList(cobj::Any, idx::vector{Int32})
	return cpp_to_julia(jlopencv_cv_Subdiv2D_getVoronoiFacetList(julia_to_cpp(cobj),julia_to_cpp(idx)))
end
getVoronoiFacetList(cobj::Any, idx::vector{Int32}; ) = getVoronoiFacetList(cobj, idx)

function symEdge(cobj::Any, edge::Int32)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_symEdge(julia_to_cpp(cobj),julia_to_cpp(edge)))
end
symEdge(cobj::Any, edge::Int32; ) = symEdge(cobj, edge)

function getTriangleList(cobj::Any)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_getTriangleList(julia_to_cpp(cobj)))
end
getTriangleList(cobj::Any; ) = getTriangleList(cobj)

function findNearest(cobj::Any, pt::PoInt322f)
	return cpp_to_julia(jlopencv_cv_Subdiv2D_findNearest(julia_to_cpp(cobj),julia_to_cpp(pt)))
end
findNearest(cobj::Any, pt::PoInt322f; ) = findNearest(cobj, pt)
function Base.getproperty(m::BRISK, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BRISK, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BRISK_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)

function getThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BRISK_getThreshold(julia_to_cpp(cobj)))
end
getThreshold(cobj::Any; ) = getThreshold(cobj)

function create(cobj::Any, thresh::Int32, octaves::Int32, patternScale::Float32)
	return cpp_to_julia(jlopencv_cv_BRISK_create(julia_to_cpp(cobj),julia_to_cpp(thresh),julia_to_cpp(octaves),julia_to_cpp(patternScale)))
end
create(cobj::Any; thresh::Int32 = 30, octaves::Int32 = 3, patternScale::Float32 = 1.0f) = create(cobj, thresh, octaves, patternScale)

function create(cobj::Any, radiusList::vector{Float32}, numberList::vector{Int32}, dMax::Float32, dMin::Float32, indexChange::vector{Int32})
	return cpp_to_julia(jlopencv_cv_BRISK_create(julia_to_cpp(cobj),julia_to_cpp(radiusList),julia_to_cpp(numberList),julia_to_cpp(dMax),julia_to_cpp(dMin),julia_to_cpp(indexChange)))
end
create(cobj::Any, radiusList::vector{Float32}, numberList::vector{Int32}; dMax::Float32 = 5.85f, dMin::Float32 = 8.2f, indexChange::vector{Int32} = std::vector<int>()) = create(cobj, radiusList, numberList, dMax, dMin, indexChange)

function create(cobj::Any, thresh::Int32, octaves::Int32, radiusList::vector{Float32}, numberList::vector{Int32}, dMax::Float32, dMin::Float32, indexChange::vector{Int32})
	return cpp_to_julia(jlopencv_cv_BRISK_create(julia_to_cpp(cobj),julia_to_cpp(thresh),julia_to_cpp(octaves),julia_to_cpp(radiusList),julia_to_cpp(numberList),julia_to_cpp(dMax),julia_to_cpp(dMin),julia_to_cpp(indexChange)))
end
create(cobj::Any, thresh::Int32, octaves::Int32, radiusList::vector{Float32}, numberList::vector{Int32}; dMax::Float32 = 5.85f, dMin::Float32 = 8.2f, indexChange::vector{Int32} = std::vector<int>()) = create(cobj, thresh, octaves, radiusList, numberList, dMax, dMin, indexChange)

function getOctaves(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BRISK_getOctaves(julia_to_cpp(cobj)))
end
getOctaves(cobj::Any; ) = getOctaves(cobj)

function setOctaves(cobj::Any, octaves::Int32)
	return cpp_to_julia(jlopencv_cv_BRISK_setOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end
setOctaves(cobj::Any, octaves::Int32; ) = setOctaves(cobj, octaves)

function setThreshold(cobj::Any, threshold::Int32)
	return cpp_to_julia(jlopencv_cv_BRISK_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setThreshold(cobj::Any, threshold::Int32; ) = setThreshold(cobj, threshold)
function Base.getproperty(m::GeneralizedHoughBallard, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GeneralizedHoughBallard, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getLevels(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughBallard_getLevels(julia_to_cpp(cobj)))
end
getLevels(cobj::Any; ) = getLevels(cobj)

function setVotesThreshold(cobj::Any, votesThreshold::Int32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughBallard_setVotesThreshold(julia_to_cpp(cobj),julia_to_cpp(votesThreshold)))
end
setVotesThreshold(cobj::Any, votesThreshold::Int32; ) = setVotesThreshold(cobj, votesThreshold)

function setLevels(cobj::Any, levels::Int32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughBallard_setLevels(julia_to_cpp(cobj),julia_to_cpp(levels)))
end
setLevels(cobj::Any, levels::Int32; ) = setLevels(cobj, levels)

function getVotesThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughBallard_getVotesThreshold(julia_to_cpp(cobj)))
end
getVotesThreshold(cobj::Any; ) = getVotesThreshold(cobj)
function Base.getproperty(m::GeneralizedHough, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GeneralizedHough, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function detect(cobj::Any, image::Mat, positions::Mat, votes::Mat)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(positions),julia_to_cpp(votes)))
end
detect(cobj::Any, image::Mat, positions::Mat, votes::Mat; ) = detect(cobj, image, positions, votes)

function detect(cobj::Any, image::UMat, positions::UMat, votes::UMat)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(positions),julia_to_cpp(votes)))
end
detect(cobj::Any, image::UMat, positions::UMat, votes::UMat; ) = detect(cobj, image, positions, votes)

function detect(cobj::Any, edges::Mat, dx::Mat, dy::Mat, positions::Mat, votes::Mat)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_detect(julia_to_cpp(cobj),julia_to_cpp(edges),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(positions),julia_to_cpp(votes)))
end
detect(cobj::Any, edges::Mat, dx::Mat, dy::Mat, positions::Mat, votes::Mat; ) = detect(cobj, edges, dx, dy, positions, votes)

function detect(cobj::Any, edges::UMat, dx::UMat, dy::UMat, positions::UMat, votes::UMat)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_detect(julia_to_cpp(cobj),julia_to_cpp(edges),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(positions),julia_to_cpp(votes)))
end
detect(cobj::Any, edges::UMat, dx::UMat, dy::UMat, positions::UMat, votes::UMat; ) = detect(cobj, edges, dx, dy, positions, votes)

function setCannyHighThresh(cobj::Any, cannyHighThresh::Int32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_setCannyHighThresh(julia_to_cpp(cobj),julia_to_cpp(cannyHighThresh)))
end
setCannyHighThresh(cobj::Any, cannyHighThresh::Int32; ) = setCannyHighThresh(cobj, cannyHighThresh)

function getDp(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_getDp(julia_to_cpp(cobj)))
end
getDp(cobj::Any; ) = getDp(cobj)

function setMaxBufferSize(cobj::Any, maxBufferSize::Int32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_setMaxBufferSize(julia_to_cpp(cobj),julia_to_cpp(maxBufferSize)))
end
setMaxBufferSize(cobj::Any, maxBufferSize::Int32; ) = setMaxBufferSize(cobj, maxBufferSize)

function setTemplate(cobj::Any, templ::Mat, templCenter::PoInt32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_setTemplate(julia_to_cpp(cobj),julia_to_cpp(templ),julia_to_cpp(templCenter)))
end
setTemplate(cobj::Any, templ::Mat; templCenter::PoInt32 = Point(-1, -1)) = setTemplate(cobj, templ, templCenter)

function setTemplate(cobj::Any, templ::UMat, templCenter::PoInt32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_setTemplate(julia_to_cpp(cobj),julia_to_cpp(templ),julia_to_cpp(templCenter)))
end
setTemplate(cobj::Any, templ::UMat; templCenter::PoInt32 = Point(-1, -1)) = setTemplate(cobj, templ, templCenter)

function setTemplate(cobj::Any, edges::Mat, dx::Mat, dy::Mat, templCenter::PoInt32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_setTemplate(julia_to_cpp(cobj),julia_to_cpp(edges),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(templCenter)))
end
setTemplate(cobj::Any, edges::Mat, dx::Mat, dy::Mat; templCenter::PoInt32 = Point(-1, -1)) = setTemplate(cobj, edges, dx, dy, templCenter)

function setTemplate(cobj::Any, edges::UMat, dx::UMat, dy::UMat, templCenter::PoInt32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_setTemplate(julia_to_cpp(cobj),julia_to_cpp(edges),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(templCenter)))
end
setTemplate(cobj::Any, edges::UMat, dx::UMat, dy::UMat; templCenter::PoInt32 = Point(-1, -1)) = setTemplate(cobj, edges, dx, dy, templCenter)

function getCannyLowThresh(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_getCannyLowThresh(julia_to_cpp(cobj)))
end
getCannyLowThresh(cobj::Any; ) = getCannyLowThresh(cobj)

function setDp(cobj::Any, dp::Float64)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_setDp(julia_to_cpp(cobj),julia_to_cpp(dp)))
end
setDp(cobj::Any, dp::Float64; ) = setDp(cobj, dp)

function getCannyHighThresh(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_getCannyHighThresh(julia_to_cpp(cobj)))
end
getCannyHighThresh(cobj::Any; ) = getCannyHighThresh(cobj)

function setCannyLowThresh(cobj::Any, cannyLowThresh::Int32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_setCannyLowThresh(julia_to_cpp(cobj),julia_to_cpp(cannyLowThresh)))
end
setCannyLowThresh(cobj::Any, cannyLowThresh::Int32; ) = setCannyLowThresh(cobj, cannyLowThresh)

function getMinDist(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_getMinDist(julia_to_cpp(cobj)))
end
getMinDist(cobj::Any; ) = getMinDist(cobj)

function setMinDist(cobj::Any, minDist::Float64)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_setMinDist(julia_to_cpp(cobj),julia_to_cpp(minDist)))
end
setMinDist(cobj::Any, minDist::Float64; ) = setMinDist(cobj, minDist)

function getMaxBufferSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHough_getMaxBufferSize(julia_to_cpp(cobj)))
end
getMaxBufferSize(cobj::Any; ) = getMaxBufferSize(cobj)
function Base.getproperty(m::VideoCapture, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoCapture, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function isOpened(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VideoCapture_isOpened(julia_to_cpp(cobj)))
end
isOpened(cobj::Any; ) = isOpened(cobj)

function retrieve(cobj::Any, image::Mat, flag::Int32)
	return cpp_to_julia(jlopencv_cv_VideoCapture_retrieve(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(flag)))
end
retrieve(cobj::Any, image::Mat; flag::Int32 = 0) = retrieve(cobj, image, flag)

function retrieve(cobj::Any, image::UMat, flag::Int32)
	return cpp_to_julia(jlopencv_cv_VideoCapture_retrieve(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(flag)))
end
retrieve(cobj::Any, image::UMat; flag::Int32 = 0) = retrieve(cobj, image, flag)

function get(cobj::Any, propId::Int32)
	return cpp_to_julia(jlopencv_cv_VideoCapture_get(julia_to_cpp(cobj),julia_to_cpp(propId)))
end
get(cobj::Any, propId::Int32; ) = get(cobj, propId)

function read(cobj::Any, image::Mat)
	return cpp_to_julia(jlopencv_cv_VideoCapture_read(julia_to_cpp(cobj),julia_to_cpp(image)))
end
read(cobj::Any, image::Mat; ) = read(cobj, image)

function read(cobj::Any, image::UMat)
	return cpp_to_julia(jlopencv_cv_VideoCapture_read(julia_to_cpp(cobj),julia_to_cpp(image)))
end
read(cobj::Any, image::UMat; ) = read(cobj, image)

function getBackendName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VideoCapture_getBackendName(julia_to_cpp(cobj)))
end
getBackendName(cobj::Any; ) = getBackendName(cobj)

function getExceptionMode(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VideoCapture_getExceptionMode(julia_to_cpp(cobj)))
end
getExceptionMode(cobj::Any; ) = getExceptionMode(cobj)

function set(cobj::Any, propId::Int32, value::Float64)
	return cpp_to_julia(jlopencv_cv_VideoCapture_set(julia_to_cpp(cobj),julia_to_cpp(propId),julia_to_cpp(value)))
end
set(cobj::Any, propId::Int32, value::Float64; ) = set(cobj, propId, value)

function release(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VideoCapture_release(julia_to_cpp(cobj)))
end
release(cobj::Any; ) = release(cobj)

function grab(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VideoCapture_grab(julia_to_cpp(cobj)))
end
grab(cobj::Any; ) = grab(cobj)

function open(cobj::Any, filename::String, apiPreference::Int32)
	return cpp_to_julia(jlopencv_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference)))
end
open(cobj::Any, filename::String; apiPreference::Int32 = CAP_ANY) = open(cobj, filename, apiPreference)

function open(cobj::Any, index::Int32, apiPreference::Int32)
	return cpp_to_julia(jlopencv_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(index),julia_to_cpp(apiPreference)))
end
open(cobj::Any, index::Int32; apiPreference::Int32 = CAP_ANY) = open(cobj, index, apiPreference)

function setExceptionMode(cobj::Any, enable::Bool)
	return cpp_to_julia(jlopencv_cv_VideoCapture_setExceptionMode(julia_to_cpp(cobj),julia_to_cpp(enable)))
end
setExceptionMode(cobj::Any, enable::Bool; ) = setExceptionMode(cobj, enable)
function Base.getproperty(m::SimpleBlobDetector_Params, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SimpleBlobDetector_Params, s::Symbol, v)
    return Base.setfield(m, s, v)
end
function Base.getproperty(m::KalmanFilter, s::Symbol)
    if s==:statePre
        return cpp_to_julia(jlopencv_KalmanFilter_get_statePre(m))
    end
    if s==:statePost
        return cpp_to_julia(jlopencv_KalmanFilter_get_statePost(m))
    end
    if s==:transitionMatrix
        return cpp_to_julia(jlopencv_KalmanFilter_get_transitionMatrix(m))
    end
    if s==:controlMatrix
        return cpp_to_julia(jlopencv_KalmanFilter_get_controlMatrix(m))
    end
    if s==:measurementMatrix
        return cpp_to_julia(jlopencv_KalmanFilter_get_measurementMatrix(m))
    end
    if s==:processNoiseCov
        return cpp_to_julia(jlopencv_KalmanFilter_get_processNoiseCov(m))
    end
    if s==:measurementNoiseCov
        return cpp_to_julia(jlopencv_KalmanFilter_get_measurementNoiseCov(m))
    end
    if s==:errorCovPre
        return cpp_to_julia(jlopencv_KalmanFilter_get_errorCovPre(m))
    end
    if s==:gain
        return cpp_to_julia(jlopencv_KalmanFilter_get_gain(m))
    end
    if s==:errorCovPost
        return cpp_to_julia(jlopencv_KalmanFilter_get_errorCovPost(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KalmanFilter, s::Symbol, v)
    if s==:statePre
        jlopencv_KalmanFilter_set_statePre(m, julia_to_cpp(v, Mat))
    end
    if s==:statePost
        jlopencv_KalmanFilter_set_statePost(m, julia_to_cpp(v, Mat))
    end
    if s==:transitionMatrix
        jlopencv_KalmanFilter_set_transitionMatrix(m, julia_to_cpp(v, Mat))
    end
    if s==:controlMatrix
        jlopencv_KalmanFilter_set_controlMatrix(m, julia_to_cpp(v, Mat))
    end
    if s==:measurementMatrix
        jlopencv_KalmanFilter_set_measurementMatrix(m, julia_to_cpp(v, Mat))
    end
    if s==:processNoiseCov
        jlopencv_KalmanFilter_set_processNoiseCov(m, julia_to_cpp(v, Mat))
    end
    if s==:measurementNoiseCov
        jlopencv_KalmanFilter_set_measurementNoiseCov(m, julia_to_cpp(v, Mat))
    end
    if s==:errorCovPre
        jlopencv_KalmanFilter_set_errorCovPre(m, julia_to_cpp(v, Mat))
    end
    if s==:gain
        jlopencv_KalmanFilter_set_gain(m, julia_to_cpp(v, Mat))
    end
    if s==:errorCovPost
        jlopencv_KalmanFilter_set_errorCovPost(m, julia_to_cpp(v, Mat))
    end
    return Base.setfield(m, s, v)
end

function predict(cobj::Any, control::Mat)
	return cpp_to_julia(jlopencv_cv_KalmanFilter_predict(julia_to_cpp(cobj),julia_to_cpp(control)))
end
predict(cobj::Any; control::Mat = Mat()) = predict(cobj, control)

function predict(cobj::Any, control::Mat)
	return cpp_to_julia(jlopencv_cv_KalmanFilter_predict(julia_to_cpp(cobj),julia_to_cpp(control)))
end
predict(cobj::Any; control::Mat = Mat()) = predict(cobj, control)

function correct(cobj::Any, measurement::Mat)
	return cpp_to_julia(jlopencv_cv_KalmanFilter_correct(julia_to_cpp(cobj),julia_to_cpp(measurement)))
end
correct(cobj::Any, measurement::Mat; ) = correct(cobj, measurement)

function correct(cobj::Any, measurement::Mat)
	return cpp_to_julia(jlopencv_cv_KalmanFilter_correct(julia_to_cpp(cobj),julia_to_cpp(measurement)))
end
correct(cobj::Any, measurement::Mat; ) = correct(cobj, measurement)
function Base.getproperty(m::FlannBasedMatcher, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FlannBasedMatcher, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function create(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FlannBasedMatcher_create(julia_to_cpp(cobj)))
end
create(cobj::Any; ) = create(cobj)
function Base.getproperty(m::SparsePyrLKOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SparsePyrLKOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getTermCriteria(cobj::Any)
	return cpp_to_julia(jlopencv_cv_SparsePyrLKOpticalFlow_getTermCriteria(julia_to_cpp(cobj)))
end
getTermCriteria(cobj::Any; ) = getTermCriteria(cobj)

function getWinSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_SparsePyrLKOpticalFlow_getWinSize(julia_to_cpp(cobj)))
end
getWinSize(cobj::Any; ) = getWinSize(cobj)

function setMinEigThreshold(cobj::Any, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_SparsePyrLKOpticalFlow_setMinEigThreshold(julia_to_cpp(cobj),julia_to_cpp(minEigThreshold)))
end
setMinEigThreshold(cobj::Any, minEigThreshold::Float64; ) = setMinEigThreshold(cobj, minEigThreshold)

function create(cobj::Any, winSize::Size, maxLevel::Int32, crit::TermCriteria, flags::Int32, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_SparsePyrLKOpticalFlow_create(julia_to_cpp(cobj),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(crit),julia_to_cpp(flags),julia_to_cpp(minEigThreshold)))
end
create(cobj::Any; winSize::Size = Size(21, 21), maxLevel::Int32 = 3, crit::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 0.01), flags::Int32 = 0, minEigThreshold::Float64 = 1e-4) = create(cobj, winSize, maxLevel, crit, flags, minEigThreshold)

function getMinEigThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_SparsePyrLKOpticalFlow_getMinEigThreshold(julia_to_cpp(cobj)))
end
getMinEigThreshold(cobj::Any; ) = getMinEigThreshold(cobj)

function setTermCriteria(cobj::Any, crit::TermCriteria)
	return cpp_to_julia(jlopencv_cv_SparsePyrLKOpticalFlow_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(crit)))
end
setTermCriteria(cobj::Any, crit::TermCriteria; ) = setTermCriteria(cobj, crit)

function getMaxLevel(cobj::Any)
	return cpp_to_julia(jlopencv_cv_SparsePyrLKOpticalFlow_getMaxLevel(julia_to_cpp(cobj)))
end
getMaxLevel(cobj::Any; ) = getMaxLevel(cobj)

function setFlags(cobj::Any, flags::Int32)
	return cpp_to_julia(jlopencv_cv_SparsePyrLKOpticalFlow_setFlags(julia_to_cpp(cobj),julia_to_cpp(flags)))
end
setFlags(cobj::Any, flags::Int32; ) = setFlags(cobj, flags)

function setWinSize(cobj::Any, winSize::Size)
	return cpp_to_julia(jlopencv_cv_SparsePyrLKOpticalFlow_setWinSize(julia_to_cpp(cobj),julia_to_cpp(winSize)))
end
setWinSize(cobj::Any, winSize::Size; ) = setWinSize(cobj, winSize)

function getFlags(cobj::Any)
	return cpp_to_julia(jlopencv_cv_SparsePyrLKOpticalFlow_getFlags(julia_to_cpp(cobj)))
end
getFlags(cobj::Any; ) = getFlags(cobj)

function setMaxLevel(cobj::Any, maxLevel::Int32)
	return cpp_to_julia(jlopencv_cv_SparsePyrLKOpticalFlow_setMaxLevel(julia_to_cpp(cobj),julia_to_cpp(maxLevel)))
end
setMaxLevel(cobj::Any, maxLevel::Int32; ) = setMaxLevel(cobj, maxLevel)
function Base.getproperty(m::VideoWriter, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoWriter, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function set(cobj::Any, propId::Int32, value::Float64)
	return cpp_to_julia(jlopencv_cv_VideoWriter_set(julia_to_cpp(cobj),julia_to_cpp(propId),julia_to_cpp(value)))
end
set(cobj::Any, propId::Int32, value::Float64; ) = set(cobj, propId, value)

function get(cobj::Any, propId::Int32)
	return cpp_to_julia(jlopencv_cv_VideoWriter_get(julia_to_cpp(cobj),julia_to_cpp(propId)))
end
get(cobj::Any, propId::Int32; ) = get(cobj, propId)

function getBackendName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VideoWriter_getBackendName(julia_to_cpp(cobj)))
end
getBackendName(cobj::Any; ) = getBackendName(cobj)

function write(cobj::Any, image::Mat)
	return cpp_to_julia(jlopencv_cv_VideoWriter_write(julia_to_cpp(cobj),julia_to_cpp(image)))
end
write(cobj::Any, image::Mat; ) = write(cobj, image)

function write(cobj::Any, image::UMat)
	return cpp_to_julia(jlopencv_cv_VideoWriter_write(julia_to_cpp(cobj),julia_to_cpp(image)))
end
write(cobj::Any, image::UMat; ) = write(cobj, image)

function fourcc(cobj::Any, c1::char, c2::char, c3::char, c4::char)
	return cpp_to_julia(jlopencv_cv_VideoWriter_fourcc(julia_to_cpp(cobj),julia_to_cpp(c1),julia_to_cpp(c2),julia_to_cpp(c3),julia_to_cpp(c4)))
end
fourcc(cobj::Any, c1::char, c2::char, c3::char, c4::char; ) = fourcc(cobj, c1, c2, c3, c4)

function isOpened(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VideoWriter_isOpened(julia_to_cpp(cobj)))
end
isOpened(cobj::Any; ) = isOpened(cobj)

function release(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VideoWriter_release(julia_to_cpp(cobj)))
end
release(cobj::Any; ) = release(cobj)

function open(cobj::Any, filename::String, fourcc::Int32, fps::Float64, frameSize::Size, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
open(cobj::Any, filename::String, fourcc::Int32, fps::Float64, frameSize::Size; isColor::Bool = true) = open(cobj, filename, fourcc, fps, frameSize, isColor)

function open(cobj::Any, filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
open(cobj::Any, filename::String, apiPreference::Int32, fourcc::Int32, fps::Float64, frameSize::Size; isColor::Bool = true) = open(cobj, filename, apiPreference, fourcc, fps, frameSize, isColor)
function Base.getproperty(m::Algorithm, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Algorithm, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_Algorithm_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)

function read(cobj::Any, fn::FileNode)
	return cpp_to_julia(jlopencv_cv_Algorithm_read(julia_to_cpp(cobj),julia_to_cpp(fn)))
end
read(cobj::Any, fn::FileNode; ) = read(cobj, fn)

function clear(cobj::Any)
	return cpp_to_julia(jlopencv_cv_Algorithm_clear(julia_to_cpp(cobj)))
end
clear(cobj::Any; ) = clear(cobj)

function write(cobj::Any, fs::Ptr{FileStorage}, name::String)
	return cpp_to_julia(jlopencv_cv_Algorithm_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
write(cobj::Any, fs::Ptr{FileStorage}; name::String = String()) = write(cobj, fs, name)

function save(cobj::Any, filename::String)
	return cpp_to_julia(jlopencv_cv_Algorithm_save(julia_to_cpp(cobj),julia_to_cpp(filename)))
end
save(cobj::Any, filename::String; ) = save(cobj, filename)

function empty(cobj::Any)
	return cpp_to_julia(jlopencv_cv_Algorithm_empty(julia_to_cpp(cobj)))
end
empty(cobj::Any; ) = empty(cobj)
function Base.getproperty(m::Feature2D, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Feature2D, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_Feature2D_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)

function detect(cobj::Any, image::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask)))
end
detect(cobj::Any, image::Mat; mask::Mat = Mat()) = detect(cobj, image, mask)

function detect(cobj::Any, image::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask)))
end
detect(cobj::Any, image::UMat; mask::UMat = UMat()) = detect(cobj, image, mask)

function detect(cobj::Any, images::vector{Mat}, masks::vector{Mat})
	return cpp_to_julia(jlopencv_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(masks)))
end
detect(cobj::Any, images::vector{Mat}; masks::vector{Mat} = vector_Mat()) = detect(cobj, images, masks)

function detect(cobj::Any, images::vector{UMat}, masks::vector{UMat})
	return cpp_to_julia(jlopencv_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(masks)))
end
detect(cobj::Any, images::vector{UMat}; masks::vector{UMat} = vector_UMat()) = detect(cobj, images, masks)

function compute(cobj::Any, image::Mat, keypoints::vector{KeyPoInt32}, descriptors::Mat)
	return cpp_to_julia(jlopencv_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::Any, image::Mat, keypoints::vector{KeyPoInt32}, descriptors::Mat; ) = compute(cobj, image, keypoints, descriptors)

function compute(cobj::Any, image::UMat, keypoints::vector{KeyPoInt32}, descriptors::UMat)
	return cpp_to_julia(jlopencv_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::Any, image::UMat, keypoints::vector{KeyPoInt32}, descriptors::UMat; ) = compute(cobj, image, keypoints, descriptors)

function compute(cobj::Any, images::vector{Mat}, keypoints::vector{vector{KeyPoInt32}})
	return cpp_to_julia(jlopencv_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(keypoints)))
end
compute(cobj::Any, images::vector{Mat}, keypoints::vector{vector{KeyPoInt32}}; ) = compute(cobj, images, keypoints)

function compute(cobj::Any, images::vector{UMat}, keypoints::vector{vector{KeyPoInt32}})
	return cpp_to_julia(jlopencv_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(keypoints)))
end
compute(cobj::Any, images::vector{UMat}, keypoints::vector{vector{KeyPoInt32}}; ) = compute(cobj, images, keypoints)

function defaultNorm(cobj::Any)
	return cpp_to_julia(jlopencv_cv_Feature2D_defaultNorm(julia_to_cpp(cobj)))
end
defaultNorm(cobj::Any; ) = defaultNorm(cobj)

function read(cobj::Any, fileName::String)
	return cpp_to_julia(jlopencv_cv_Feature2D_read(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end
read(cobj::Any, fileName::String; ) = read(cobj, fileName)

function read(cobj::Any, arg1::FileNode)
	return cpp_to_julia(jlopencv_cv_Feature2D_read(julia_to_cpp(cobj),julia_to_cpp(arg1)))
end
read(cobj::Any, arg1::FileNode; ) = read(cobj, arg1)

function detectAndCompute(cobj::Any, image::Mat, mask::Mat, descriptors::Mat, useProvidedKeypoints::Bool)
	return cpp_to_julia(jlopencv_cv_Feature2D_detectAndCompute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(descriptors),julia_to_cpp(useProvidedKeypoints)))
end
detectAndCompute(cobj::Any, image::Mat, mask::Mat, descriptors::Mat; useProvidedKeypoints::Bool = false) = detectAndCompute(cobj, image, mask, descriptors, useProvidedKeypoints)

function detectAndCompute(cobj::Any, image::UMat, mask::UMat, descriptors::UMat, useProvidedKeypoints::Bool)
	return cpp_to_julia(jlopencv_cv_Feature2D_detectAndCompute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(descriptors),julia_to_cpp(useProvidedKeypoints)))
end
detectAndCompute(cobj::Any, image::UMat, mask::UMat, descriptors::UMat; useProvidedKeypoints::Bool = false) = detectAndCompute(cobj, image, mask, descriptors, useProvidedKeypoints)

function descriptorSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_Feature2D_descriptorSize(julia_to_cpp(cobj)))
end
descriptorSize(cobj::Any; ) = descriptorSize(cobj)

function write(cobj::Any, fileName::String)
	return cpp_to_julia(jlopencv_cv_Feature2D_write(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end
write(cobj::Any, fileName::String; ) = write(cobj, fileName)

function write(cobj::Any, fs::Ptr{FileStorage}, name::String)
	return cpp_to_julia(jlopencv_cv_Feature2D_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
write(cobj::Any, fs::Ptr{FileStorage}; name::String = String()) = write(cobj, fs, name)

function descriptorType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_Feature2D_descriptorType(julia_to_cpp(cobj)))
end
descriptorType(cobj::Any; ) = descriptorType(cobj)

function empty(cobj::Any)
	return cpp_to_julia(jlopencv_cv_Feature2D_empty(julia_to_cpp(cobj)))
end
empty(cobj::Any; ) = empty(cobj)
function Base.getproperty(m::GFTTDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GFTTDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getBlockSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_getBlockSize(julia_to_cpp(cobj)))
end
getBlockSize(cobj::Any; ) = getBlockSize(cobj)

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)

function getK(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_getK(julia_to_cpp(cobj)))
end
getK(cobj::Any; ) = getK(cobj)

function setHarrisDetector(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_setHarrisDetector(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setHarrisDetector(cobj::Any, val::Bool; ) = setHarrisDetector(cobj, val)

function setBlockSize(cobj::Any, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_setBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end
setBlockSize(cobj::Any, blockSize::Int32; ) = setBlockSize(cobj, blockSize)

function create(cobj::Any, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, blockSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_create(julia_to_cpp(cobj),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
create(cobj::Any; maxCorners::Int32 = 1000, qualityLevel::Float64 = 0.01, minDistance::Float64 = 1, blockSize::Int32 = 3, useHarrisDetector::Bool = false, k::Float64 = 0.04) = create(cobj, maxCorners, qualityLevel, minDistance, blockSize, useHarrisDetector, k)

function create(cobj::Any, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, blockSize::Int32, gradiantSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_create(julia_to_cpp(cobj),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(blockSize),julia_to_cpp(gradiantSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
create(cobj::Any, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, blockSize::Int32, gradiantSize::Int32; useHarrisDetector::Bool = false, k::Float64 = 0.04) = create(cobj, maxCorners, qualityLevel, minDistance, blockSize, gradiantSize, useHarrisDetector, k)

function setQualityLevel(cobj::Any, qlevel::Float64)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_setQualityLevel(julia_to_cpp(cobj),julia_to_cpp(qlevel)))
end
setQualityLevel(cobj::Any, qlevel::Float64; ) = setQualityLevel(cobj, qlevel)

function setMaxFeatures(cobj::Any, maxFeatures::Int32)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_setMaxFeatures(julia_to_cpp(cobj),julia_to_cpp(maxFeatures)))
end
setMaxFeatures(cobj::Any, maxFeatures::Int32; ) = setMaxFeatures(cobj, maxFeatures)

function setK(cobj::Any, k::Float64)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_setK(julia_to_cpp(cobj),julia_to_cpp(k)))
end
setK(cobj::Any, k::Float64; ) = setK(cobj, k)

function getMaxFeatures(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_getMaxFeatures(julia_to_cpp(cobj)))
end
getMaxFeatures(cobj::Any; ) = getMaxFeatures(cobj)

function setMinDistance(cobj::Any, minDistance::Float64)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_setMinDistance(julia_to_cpp(cobj),julia_to_cpp(minDistance)))
end
setMinDistance(cobj::Any, minDistance::Float64; ) = setMinDistance(cobj, minDistance)

function getMinDistance(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_getMinDistance(julia_to_cpp(cobj)))
end
getMinDistance(cobj::Any; ) = getMinDistance(cobj)

function getQualityLevel(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_getQualityLevel(julia_to_cpp(cobj)))
end
getQualityLevel(cobj::Any; ) = getQualityLevel(cobj)

function getHarrisDetector(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_getHarrisDetector(julia_to_cpp(cobj)))
end
getHarrisDetector(cobj::Any; ) = getHarrisDetector(cobj)
function Base.getproperty(m::DescriptorMatcher, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DescriptorMatcher, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function clone(cobj::Any, emptyTrainData::Bool)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_clone(julia_to_cpp(cobj),julia_to_cpp(emptyTrainData)))
end
clone(cobj::Any; emptyTrainData::Bool = false) = clone(cobj, emptyTrainData)

function radiusMatch(cobj::Any, queryDescriptors::Mat, trainDescriptors::Mat, maxDistance::Float32, mask::Mat, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::Any, queryDescriptors::Mat, trainDescriptors::Mat, maxDistance::Float32; mask::Mat = Mat(), compactResult::Bool = false) = radiusMatch(cobj, queryDescriptors, trainDescriptors, maxDistance, mask, compactResult)

function radiusMatch(cobj::Any, queryDescriptors::UMat, trainDescriptors::UMat, maxDistance::Float32, mask::UMat, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::Any, queryDescriptors::UMat, trainDescriptors::UMat, maxDistance::Float32; mask::UMat = UMat(), compactResult::Bool = false) = radiusMatch(cobj, queryDescriptors, trainDescriptors, maxDistance, mask, compactResult)

function radiusMatch(cobj::Any, queryDescriptors::Mat, maxDistance::Float32, masks::vector{Mat}, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::Any, queryDescriptors::Mat, maxDistance::Float32; masks::vector{Mat} = vector_Mat(), compactResult::Bool = false) = radiusMatch(cobj, queryDescriptors, maxDistance, masks, compactResult)

function radiusMatch(cobj::Any, queryDescriptors::UMat, maxDistance::Float32, masks::vector{UMat}, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::Any, queryDescriptors::UMat, maxDistance::Float32; masks::vector{UMat} = vector_UMat(), compactResult::Bool = false) = radiusMatch(cobj, queryDescriptors, maxDistance, masks, compactResult)

function create(cobj::Any, descriptorMatcherType::String)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_create(julia_to_cpp(cobj),julia_to_cpp(descriptorMatcherType)))
end
create(cobj::Any, descriptorMatcherType::String; ) = create(cobj, descriptorMatcherType)

function create(cobj::Any, matcherType::DescriptorMatcher_MatcherType)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_create(julia_to_cpp(cobj),julia_to_cpp(matcherType)))
end
create(cobj::Any, matcherType::DescriptorMatcher_MatcherType; ) = create(cobj, matcherType)

function read(cobj::Any, fileName::String)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_read(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end
read(cobj::Any, fileName::String; ) = read(cobj, fileName)

function read(cobj::Any, arg1::FileNode)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_read(julia_to_cpp(cobj),julia_to_cpp(arg1)))
end
read(cobj::Any, arg1::FileNode; ) = read(cobj, arg1)

function clear(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_clear(julia_to_cpp(cobj)))
end
clear(cobj::Any; ) = clear(cobj)

function knnMatch(cobj::Any, queryDescriptors::Mat, trainDescriptors::Mat, k::Int32, mask::Mat, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(k),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
knnMatch(cobj::Any, queryDescriptors::Mat, trainDescriptors::Mat, k::Int32; mask::Mat = Mat(), compactResult::Bool = false) = knnMatch(cobj, queryDescriptors, trainDescriptors, k, mask, compactResult)

function knnMatch(cobj::Any, queryDescriptors::UMat, trainDescriptors::UMat, k::Int32, mask::UMat, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(k),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
knnMatch(cobj::Any, queryDescriptors::UMat, trainDescriptors::UMat, k::Int32; mask::UMat = UMat(), compactResult::Bool = false) = knnMatch(cobj, queryDescriptors, trainDescriptors, k, mask, compactResult)

function knnMatch(cobj::Any, queryDescriptors::Mat, k::Int32, masks::vector{Mat}, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(k),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
knnMatch(cobj::Any, queryDescriptors::Mat, k::Int32; masks::vector{Mat} = vector_Mat(), compactResult::Bool = false) = knnMatch(cobj, queryDescriptors, k, masks, compactResult)

function knnMatch(cobj::Any, queryDescriptors::UMat, k::Int32, masks::vector{UMat}, compactResult::Bool)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(k),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
knnMatch(cobj::Any, queryDescriptors::UMat, k::Int32; masks::vector{UMat} = vector_UMat(), compactResult::Bool = false) = knnMatch(cobj, queryDescriptors, k, masks, compactResult)

function write(cobj::Any, fileName::String)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_write(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end
write(cobj::Any, fileName::String; ) = write(cobj, fileName)

function write(cobj::Any, fs::Ptr{FileStorage}, name::String)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
write(cobj::Any, fs::Ptr{FileStorage}; name::String = String()) = write(cobj, fs, name)

function add(cobj::Any, descriptors::vector{Mat})
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
add(cobj::Any, descriptors::vector{Mat}; ) = add(cobj, descriptors)

function add(cobj::Any, descriptors::vector{UMat})
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
add(cobj::Any, descriptors::vector{UMat}; ) = add(cobj, descriptors)

function train(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_train(julia_to_cpp(cobj)))
end
train(cobj::Any; ) = train(cobj)

function match(cobj::Any, queryDescriptors::Mat, trainDescriptors::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(mask)))
end
match(cobj::Any, queryDescriptors::Mat, trainDescriptors::Mat; mask::Mat = Mat()) = match(cobj, queryDescriptors, trainDescriptors, mask)

function match(cobj::Any, queryDescriptors::UMat, trainDescriptors::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(mask)))
end
match(cobj::Any, queryDescriptors::UMat, trainDescriptors::UMat; mask::UMat = UMat()) = match(cobj, queryDescriptors, trainDescriptors, mask)

function match(cobj::Any, queryDescriptors::Mat, masks::vector{Mat})
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(masks)))
end
match(cobj::Any, queryDescriptors::Mat; masks::vector{Mat} = vector_Mat()) = match(cobj, queryDescriptors, masks)

function match(cobj::Any, queryDescriptors::UMat, masks::vector{UMat})
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(masks)))
end
match(cobj::Any, queryDescriptors::UMat; masks::vector{UMat} = vector_UMat()) = match(cobj, queryDescriptors, masks)

function getTrainDescriptors(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_getTrainDescriptors(julia_to_cpp(cobj)))
end
getTrainDescriptors(cobj::Any; ) = getTrainDescriptors(cobj)

function isMaskSupported(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_isMaskSupported(julia_to_cpp(cobj)))
end
isMaskSupported(cobj::Any; ) = isMaskSupported(cobj)

function empty(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_empty(julia_to_cpp(cobj)))
end
empty(cobj::Any; ) = empty(cobj)
function Base.getproperty(m::GeneralizedHoughGuil, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GeneralizedHoughGuil, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getLevels(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_getLevels(julia_to_cpp(cobj)))
end
getLevels(cobj::Any; ) = getLevels(cobj)

function setMaxScale(cobj::Any, maxScale::Float64)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_setMaxScale(julia_to_cpp(cobj),julia_to_cpp(maxScale)))
end
setMaxScale(cobj::Any, maxScale::Float64; ) = setMaxScale(cobj, maxScale)

function setMinScale(cobj::Any, minScale::Float64)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_setMinScale(julia_to_cpp(cobj),julia_to_cpp(minScale)))
end
setMinScale(cobj::Any, minScale::Float64; ) = setMinScale(cobj, minScale)

function setMinAngle(cobj::Any, minAngle::Float64)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_setMinAngle(julia_to_cpp(cobj),julia_to_cpp(minAngle)))
end
setMinAngle(cobj::Any, minAngle::Float64; ) = setMinAngle(cobj, minAngle)

function getMinAngle(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_getMinAngle(julia_to_cpp(cobj)))
end
getMinAngle(cobj::Any; ) = getMinAngle(cobj)

function getPosThresh(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_getPosThresh(julia_to_cpp(cobj)))
end
getPosThresh(cobj::Any; ) = getPosThresh(cobj)

function getScaleThresh(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_getScaleThresh(julia_to_cpp(cobj)))
end
getScaleThresh(cobj::Any; ) = getScaleThresh(cobj)

function setScaleStep(cobj::Any, scaleStep::Float64)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_setScaleStep(julia_to_cpp(cobj),julia_to_cpp(scaleStep)))
end
setScaleStep(cobj::Any, scaleStep::Float64; ) = setScaleStep(cobj, scaleStep)

function getAngleStep(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_getAngleStep(julia_to_cpp(cobj)))
end
getAngleStep(cobj::Any; ) = getAngleStep(cobj)

function setScaleThresh(cobj::Any, scaleThresh::Int32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_setScaleThresh(julia_to_cpp(cobj),julia_to_cpp(scaleThresh)))
end
setScaleThresh(cobj::Any, scaleThresh::Int32; ) = setScaleThresh(cobj, scaleThresh)

function setAngleStep(cobj::Any, angleStep::Float64)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_setAngleStep(julia_to_cpp(cobj),julia_to_cpp(angleStep)))
end
setAngleStep(cobj::Any, angleStep::Float64; ) = setAngleStep(cobj, angleStep)

function getMaxAngle(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_getMaxAngle(julia_to_cpp(cobj)))
end
getMaxAngle(cobj::Any; ) = getMaxAngle(cobj)

function getMaxScale(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_getMaxScale(julia_to_cpp(cobj)))
end
getMaxScale(cobj::Any; ) = getMaxScale(cobj)

function setMaxAngle(cobj::Any, maxAngle::Float64)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_setMaxAngle(julia_to_cpp(cobj),julia_to_cpp(maxAngle)))
end
setMaxAngle(cobj::Any, maxAngle::Float64; ) = setMaxAngle(cobj, maxAngle)

function setAngleEpsilon(cobj::Any, angleEpsilon::Float64)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_setAngleEpsilon(julia_to_cpp(cobj),julia_to_cpp(angleEpsilon)))
end
setAngleEpsilon(cobj::Any, angleEpsilon::Float64; ) = setAngleEpsilon(cobj, angleEpsilon)

function getXi(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_getXi(julia_to_cpp(cobj)))
end
getXi(cobj::Any; ) = getXi(cobj)

function setPosThresh(cobj::Any, posThresh::Int32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_setPosThresh(julia_to_cpp(cobj),julia_to_cpp(posThresh)))
end
setPosThresh(cobj::Any, posThresh::Int32; ) = setPosThresh(cobj, posThresh)

function getMinScale(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_getMinScale(julia_to_cpp(cobj)))
end
getMinScale(cobj::Any; ) = getMinScale(cobj)

function getScaleStep(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_getScaleStep(julia_to_cpp(cobj)))
end
getScaleStep(cobj::Any; ) = getScaleStep(cobj)

function setXi(cobj::Any, xi::Float64)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_setXi(julia_to_cpp(cobj),julia_to_cpp(xi)))
end
setXi(cobj::Any, xi::Float64; ) = setXi(cobj, xi)

function getAngleThresh(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_getAngleThresh(julia_to_cpp(cobj)))
end
getAngleThresh(cobj::Any; ) = getAngleThresh(cobj)

function setLevels(cobj::Any, levels::Int32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_setLevels(julia_to_cpp(cobj),julia_to_cpp(levels)))
end
setLevels(cobj::Any, levels::Int32; ) = setLevels(cobj, levels)

function setAngleThresh(cobj::Any, angleThresh::Int32)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_setAngleThresh(julia_to_cpp(cobj),julia_to_cpp(angleThresh)))
end
setAngleThresh(cobj::Any, angleThresh::Int32; ) = setAngleThresh(cobj, angleThresh)

function getAngleEpsilon(cobj::Any)
	return cpp_to_julia(jlopencv_cv_GeneralizedHoughGuil_getAngleEpsilon(julia_to_cpp(cobj)))
end
getAngleEpsilon(cobj::Any; ) = getAngleEpsilon(cobj)
function Base.getproperty(m::DMatch, s::Symbol)
    if s==:queryIdx
        return cpp_to_julia(jlopencv_DMatch_get_queryIdx(m))
    end
    if s==:trainIdx
        return cpp_to_julia(jlopencv_DMatch_get_trainIdx(m))
    end
    if s==:imgIdx
        return cpp_to_julia(jlopencv_DMatch_get_imgIdx(m))
    end
    if s==:distance
        return cpp_to_julia(jlopencv_DMatch_get_distance(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DMatch, s::Symbol, v)
    if s==:queryIdx
        jlopencv_DMatch_set_queryIdx(m, julia_to_cpp(v, int))
    end
    if s==:trainIdx
        jlopencv_DMatch_set_trainIdx(m, julia_to_cpp(v, int))
    end
    if s==:imgIdx
        jlopencv_DMatch_set_imgIdx(m, julia_to_cpp(v, int))
    end
    if s==:distance
        jlopencv_DMatch_set_distance(m, julia_to_cpp(v, float))
    end
    return Base.setfield(m, s, v)
end
function Base.getproperty(m::BaseCascadeClassifier, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BaseCascadeClassifier, s::Symbol, v)
    return Base.setfield(m, s, v)
end
function Base.getproperty(m::MSER, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::MSER, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_MSER_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)

function getPass2Only(cobj::Any)
	return cpp_to_julia(jlopencv_cv_MSER_getPass2Only(julia_to_cpp(cobj)))
end
getPass2Only(cobj::Any; ) = getPass2Only(cobj)

function setMinArea(cobj::Any, minArea::Int32)
	return cpp_to_julia(jlopencv_cv_MSER_setMinArea(julia_to_cpp(cobj),julia_to_cpp(minArea)))
end
setMinArea(cobj::Any, minArea::Int32; ) = setMinArea(cobj, minArea)

function getDelta(cobj::Any)
	return cpp_to_julia(jlopencv_cv_MSER_getDelta(julia_to_cpp(cobj)))
end
getDelta(cobj::Any; ) = getDelta(cobj)

function create(cobj::Any, _delta::Int32, _min_area::Int32, _max_area::Int32, _max_variation::Float64, _min_diversity::Float64, _max_evolution::Int32, _area_threshold::Float64, _min_margin::Float64, _edge_blur_size::Int32)
	return cpp_to_julia(jlopencv_cv_MSER_create(julia_to_cpp(cobj),julia_to_cpp(_delta),julia_to_cpp(_min_area),julia_to_cpp(_max_area),julia_to_cpp(_max_variation),julia_to_cpp(_min_diversity),julia_to_cpp(_max_evolution),julia_to_cpp(_area_threshold),julia_to_cpp(_min_margin),julia_to_cpp(_edge_blur_size)))
end
create(cobj::Any; _delta::Int32 = 5, _min_area::Int32 = 60, _max_area::Int32 = 14400, _max_variation::Float64 = 0.25, _min_diversity::Float64 = .2, _max_evolution::Int32 = 200, _area_threshold::Float64 = 1.01, _min_margin::Float64 = 0.003, _edge_blur_size::Int32 = 5) = create(cobj, _delta, _min_area, _max_area, _max_variation, _min_diversity, _max_evolution, _area_threshold, _min_margin, _edge_blur_size)

function getMaxArea(cobj::Any)
	return cpp_to_julia(jlopencv_cv_MSER_getMaxArea(julia_to_cpp(cobj)))
end
getMaxArea(cobj::Any; ) = getMaxArea(cobj)

function setMaxArea(cobj::Any, maxArea::Int32)
	return cpp_to_julia(jlopencv_cv_MSER_setMaxArea(julia_to_cpp(cobj),julia_to_cpp(maxArea)))
end
setMaxArea(cobj::Any, maxArea::Int32; ) = setMaxArea(cobj, maxArea)

function setPass2Only(cobj::Any, f::Bool)
	return cpp_to_julia(jlopencv_cv_MSER_setPass2Only(julia_to_cpp(cobj),julia_to_cpp(f)))
end
setPass2Only(cobj::Any, f::Bool; ) = setPass2Only(cobj, f)

function getMinArea(cobj::Any)
	return cpp_to_julia(jlopencv_cv_MSER_getMinArea(julia_to_cpp(cobj)))
end
getMinArea(cobj::Any; ) = getMinArea(cobj)

function detectRegions(cobj::Any, image::Mat)
	return cpp_to_julia(jlopencv_cv_MSER_detectRegions(julia_to_cpp(cobj),julia_to_cpp(image)))
end
detectRegions(cobj::Any, image::Mat; ) = detectRegions(cobj, image)

function detectRegions(cobj::Any, image::UMat)
	return cpp_to_julia(jlopencv_cv_MSER_detectRegions(julia_to_cpp(cobj),julia_to_cpp(image)))
end
detectRegions(cobj::Any, image::UMat; ) = detectRegions(cobj, image)

function setDelta(cobj::Any, delta::Int32)
	return cpp_to_julia(jlopencv_cv_MSER_setDelta(julia_to_cpp(cobj),julia_to_cpp(delta)))
end
setDelta(cobj::Any, delta::Int32; ) = setDelta(cobj, delta)
function Base.getproperty(m::VariationalRefinement, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VariationalRefinement, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setGamma(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_setGamma(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setGamma(cobj::Any, val::Float32; ) = setGamma(cobj, val)

function getDelta(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_getDelta(julia_to_cpp(cobj)))
end
getDelta(cobj::Any; ) = getDelta(cobj)

function calcUV(cobj::Any, I0::Mat, I1::Mat, flow_u::Mat, flow_v::Mat)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_calcUV(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow_u),julia_to_cpp(flow_v)))
end
calcUV(cobj::Any, I0::Mat, I1::Mat, flow_u::Mat, flow_v::Mat; ) = calcUV(cobj, I0, I1, flow_u, flow_v)

function calcUV(cobj::Any, I0::UMat, I1::UMat, flow_u::UMat, flow_v::UMat)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_calcUV(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow_u),julia_to_cpp(flow_v)))
end
calcUV(cobj::Any, I0::UMat, I1::UMat, flow_u::UMat, flow_v::UMat; ) = calcUV(cobj, I0, I1, flow_u, flow_v)

function create(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_create(julia_to_cpp(cobj)))
end
create(cobj::Any; ) = create(cobj)

function setFixedPointIterations(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_setFixedPointIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setFixedPointIterations(cobj::Any, val::Int32; ) = setFixedPointIterations(cobj, val)

function setOmega(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_setOmega(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setOmega(cobj::Any, val::Float32; ) = setOmega(cobj, val)

function getFixedPointIterations(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_getFixedPointIterations(julia_to_cpp(cobj)))
end
getFixedPointIterations(cobj::Any; ) = getFixedPointIterations(cobj)

function setAlpha(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_setAlpha(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setAlpha(cobj::Any, val::Float32; ) = setAlpha(cobj, val)

function getGamma(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_getGamma(julia_to_cpp(cobj)))
end
getGamma(cobj::Any; ) = getGamma(cobj)

function getSorIterations(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_getSorIterations(julia_to_cpp(cobj)))
end
getSorIterations(cobj::Any; ) = getSorIterations(cobj)

function getAlpha(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_getAlpha(julia_to_cpp(cobj)))
end
getAlpha(cobj::Any; ) = getAlpha(cobj)

function setDelta(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_setDelta(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setDelta(cobj::Any, val::Float32; ) = setDelta(cobj, val)

function setSorIterations(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_setSorIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setSorIterations(cobj::Any, val::Int32; ) = setSorIterations(cobj, val)

function getOmega(cobj::Any)
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_getOmega(julia_to_cpp(cobj)))
end
getOmega(cobj::Any; ) = getOmega(cobj)
function Base.getproperty(m::BackgroundSubtractorKNN, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BackgroundSubtractorKNN, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDetectShadows(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_getDetectShadows(julia_to_cpp(cobj)))
end
getDetectShadows(cobj::Any; ) = getDetectShadows(cobj)

function getkNNSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_getkNNSamples(julia_to_cpp(cobj)))
end
getkNNSamples(cobj::Any; ) = getkNNSamples(cobj)

function setDetectShadows(cobj::Any, detectShadows::Bool)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_setDetectShadows(julia_to_cpp(cobj),julia_to_cpp(detectShadows)))
end
setDetectShadows(cobj::Any, detectShadows::Bool; ) = setDetectShadows(cobj, detectShadows)

function getDist2Threshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_getDist2Threshold(julia_to_cpp(cobj)))
end
getDist2Threshold(cobj::Any; ) = getDist2Threshold(cobj)

function setDist2Threshold(cobj::Any, _dist2Threshold::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_setDist2Threshold(julia_to_cpp(cobj),julia_to_cpp(_dist2Threshold)))
end
setDist2Threshold(cobj::Any, _dist2Threshold::Float64; ) = setDist2Threshold(cobj, _dist2Threshold)

function getNSamples(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_getNSamples(julia_to_cpp(cobj)))
end
getNSamples(cobj::Any; ) = getNSamples(cobj)

function setkNNSamples(cobj::Any, _nkNN::Int32)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_setkNNSamples(julia_to_cpp(cobj),julia_to_cpp(_nkNN)))
end
setkNNSamples(cobj::Any, _nkNN::Int32; ) = setkNNSamples(cobj, _nkNN)

function getHistory(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_getHistory(julia_to_cpp(cobj)))
end
getHistory(cobj::Any; ) = getHistory(cobj)

function setShadowValue(cobj::Any, value::Int32)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_setShadowValue(julia_to_cpp(cobj),julia_to_cpp(value)))
end
setShadowValue(cobj::Any, value::Int32; ) = setShadowValue(cobj, value)

function setHistory(cobj::Any, history::Int32)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_setHistory(julia_to_cpp(cobj),julia_to_cpp(history)))
end
setHistory(cobj::Any, history::Int32; ) = setHistory(cobj, history)

function setNSamples(cobj::Any, _nN::Int32)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_setNSamples(julia_to_cpp(cobj),julia_to_cpp(_nN)))
end
setNSamples(cobj::Any, _nN::Int32; ) = setNSamples(cobj, _nN)

function getShadowThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_getShadowThreshold(julia_to_cpp(cobj)))
end
getShadowThreshold(cobj::Any; ) = getShadowThreshold(cobj)

function getShadowValue(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_getShadowValue(julia_to_cpp(cobj)))
end
getShadowValue(cobj::Any; ) = getShadowValue(cobj)

function setShadowThreshold(cobj::Any, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_BackgroundSubtractorKNN_setShadowThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setShadowThreshold(cobj::Any, threshold::Float64; ) = setShadowThreshold(cobj, threshold)
function Base.getproperty(m::SimpleBlobDetector_Params, s::Symbol)
    if s==:thresholdStep
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_thresholdStep(m))
    end
    if s==:minThreshold
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minThreshold(m))
    end
    if s==:maxThreshold
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxThreshold(m))
    end
    if s==:minRepeatability
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minRepeatability(m))
    end
    if s==:minDistBetweenBlobs
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minDistBetweenBlobs(m))
    end
    if s==:filterByColor
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByColor(m))
    end
    if s==:blobColor
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_blobColor(m))
    end
    if s==:filterByArea
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByArea(m))
    end
    if s==:minArea
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minArea(m))
    end
    if s==:maxArea
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxArea(m))
    end
    if s==:filterByCircularity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByCircularity(m))
    end
    if s==:minCircularity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minCircularity(m))
    end
    if s==:maxCircularity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxCircularity(m))
    end
    if s==:filterByInertia
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByInertia(m))
    end
    if s==:minInertiaRatio
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minInertiaRatio(m))
    end
    if s==:maxInertiaRatio
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxInertiaRatio(m))
    end
    if s==:filterByConvexity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByConvexity(m))
    end
    if s==:minConvexity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minConvexity(m))
    end
    if s==:maxConvexity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxConvexity(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SimpleBlobDetector_Params, s::Symbol, v)
    if s==:thresholdStep
        jlopencv_SimpleBlobDetector_Params_set_thresholdStep(m, julia_to_cpp(v, float))
    end
    if s==:minThreshold
        jlopencv_SimpleBlobDetector_Params_set_minThreshold(m, julia_to_cpp(v, float))
    end
    if s==:maxThreshold
        jlopencv_SimpleBlobDetector_Params_set_maxThreshold(m, julia_to_cpp(v, float))
    end
    if s==:minRepeatability
        jlopencv_SimpleBlobDetector_Params_set_minRepeatability(m, julia_to_cpp(v, size_t))
    end
    if s==:minDistBetweenBlobs
        jlopencv_SimpleBlobDetector_Params_set_minDistBetweenBlobs(m, julia_to_cpp(v, float))
    end
    if s==:filterByColor
        jlopencv_SimpleBlobDetector_Params_set_filterByColor(m, julia_to_cpp(v, bool))
    end
    if s==:blobColor
        jlopencv_SimpleBlobDetector_Params_set_blobColor(m, julia_to_cpp(v, uchar))
    end
    if s==:filterByArea
        jlopencv_SimpleBlobDetector_Params_set_filterByArea(m, julia_to_cpp(v, bool))
    end
    if s==:minArea
        jlopencv_SimpleBlobDetector_Params_set_minArea(m, julia_to_cpp(v, float))
    end
    if s==:maxArea
        jlopencv_SimpleBlobDetector_Params_set_maxArea(m, julia_to_cpp(v, float))
    end
    if s==:filterByCircularity
        jlopencv_SimpleBlobDetector_Params_set_filterByCircularity(m, julia_to_cpp(v, bool))
    end
    if s==:minCircularity
        jlopencv_SimpleBlobDetector_Params_set_minCircularity(m, julia_to_cpp(v, float))
    end
    if s==:maxCircularity
        jlopencv_SimpleBlobDetector_Params_set_maxCircularity(m, julia_to_cpp(v, float))
    end
    if s==:filterByInertia
        jlopencv_SimpleBlobDetector_Params_set_filterByInertia(m, julia_to_cpp(v, bool))
    end
    if s==:minInertiaRatio
        jlopencv_SimpleBlobDetector_Params_set_minInertiaRatio(m, julia_to_cpp(v, float))
    end
    if s==:maxInertiaRatio
        jlopencv_SimpleBlobDetector_Params_set_maxInertiaRatio(m, julia_to_cpp(v, float))
    end
    if s==:filterByConvexity
        jlopencv_SimpleBlobDetector_Params_set_filterByConvexity(m, julia_to_cpp(v, bool))
    end
    if s==:minConvexity
        jlopencv_SimpleBlobDetector_Params_set_minConvexity(m, julia_to_cpp(v, float))
    end
    if s==:maxConvexity
        jlopencv_SimpleBlobDetector_Params_set_maxConvexity(m, julia_to_cpp(v, float))
    end
    return Base.setfield(m, s, v)
end
function Base.getproperty(m::Moments, s::Symbol)
    if s==:m00
        return cpp_to_julia(jlopencv_Moments_get_m00(m))
    end
    if s==:m10
        return cpp_to_julia(jlopencv_Moments_get_m10(m))
    end
    if s==:m01
        return cpp_to_julia(jlopencv_Moments_get_m01(m))
    end
    if s==:m20
        return cpp_to_julia(jlopencv_Moments_get_m20(m))
    end
    if s==:m11
        return cpp_to_julia(jlopencv_Moments_get_m11(m))
    end
    if s==:m02
        return cpp_to_julia(jlopencv_Moments_get_m02(m))
    end
    if s==:m30
        return cpp_to_julia(jlopencv_Moments_get_m30(m))
    end
    if s==:m21
        return cpp_to_julia(jlopencv_Moments_get_m21(m))
    end
    if s==:m12
        return cpp_to_julia(jlopencv_Moments_get_m12(m))
    end
    if s==:m03
        return cpp_to_julia(jlopencv_Moments_get_m03(m))
    end
    if s==:mu20
        return cpp_to_julia(jlopencv_Moments_get_mu20(m))
    end
    if s==:mu11
        return cpp_to_julia(jlopencv_Moments_get_mu11(m))
    end
    if s==:mu02
        return cpp_to_julia(jlopencv_Moments_get_mu02(m))
    end
    if s==:mu30
        return cpp_to_julia(jlopencv_Moments_get_mu30(m))
    end
    if s==:mu21
        return cpp_to_julia(jlopencv_Moments_get_mu21(m))
    end
    if s==:mu12
        return cpp_to_julia(jlopencv_Moments_get_mu12(m))
    end
    if s==:mu03
        return cpp_to_julia(jlopencv_Moments_get_mu03(m))
    end
    if s==:nu20
        return cpp_to_julia(jlopencv_Moments_get_nu20(m))
    end
    if s==:nu11
        return cpp_to_julia(jlopencv_Moments_get_nu11(m))
    end
    if s==:nu02
        return cpp_to_julia(jlopencv_Moments_get_nu02(m))
    end
    if s==:nu30
        return cpp_to_julia(jlopencv_Moments_get_nu30(m))
    end
    if s==:nu21
        return cpp_to_julia(jlopencv_Moments_get_nu21(m))
    end
    if s==:nu12
        return cpp_to_julia(jlopencv_Moments_get_nu12(m))
    end
    if s==:nu03
        return cpp_to_julia(jlopencv_Moments_get_nu03(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Moments, s::Symbol, v)
    if s==:m00
        jlopencv_Moments_set_m00(m, julia_to_cpp(v, double))
    end
    if s==:m10
        jlopencv_Moments_set_m10(m, julia_to_cpp(v, double))
    end
    if s==:m01
        jlopencv_Moments_set_m01(m, julia_to_cpp(v, double))
    end
    if s==:m20
        jlopencv_Moments_set_m20(m, julia_to_cpp(v, double))
    end
    if s==:m11
        jlopencv_Moments_set_m11(m, julia_to_cpp(v, double))
    end
    if s==:m02
        jlopencv_Moments_set_m02(m, julia_to_cpp(v, double))
    end
    if s==:m30
        jlopencv_Moments_set_m30(m, julia_to_cpp(v, double))
    end
    if s==:m21
        jlopencv_Moments_set_m21(m, julia_to_cpp(v, double))
    end
    if s==:m12
        jlopencv_Moments_set_m12(m, julia_to_cpp(v, double))
    end
    if s==:m03
        jlopencv_Moments_set_m03(m, julia_to_cpp(v, double))
    end
    if s==:mu20
        jlopencv_Moments_set_mu20(m, julia_to_cpp(v, double))
    end
    if s==:mu11
        jlopencv_Moments_set_mu11(m, julia_to_cpp(v, double))
    end
    if s==:mu02
        jlopencv_Moments_set_mu02(m, julia_to_cpp(v, double))
    end
    if s==:mu30
        jlopencv_Moments_set_mu30(m, julia_to_cpp(v, double))
    end
    if s==:mu21
        jlopencv_Moments_set_mu21(m, julia_to_cpp(v, double))
    end
    if s==:mu12
        jlopencv_Moments_set_mu12(m, julia_to_cpp(v, double))
    end
    if s==:mu03
        jlopencv_Moments_set_mu03(m, julia_to_cpp(v, double))
    end
    if s==:nu20
        jlopencv_Moments_set_nu20(m, julia_to_cpp(v, double))
    end
    if s==:nu11
        jlopencv_Moments_set_nu11(m, julia_to_cpp(v, double))
    end
    if s==:nu02
        jlopencv_Moments_set_nu02(m, julia_to_cpp(v, double))
    end
    if s==:nu30
        jlopencv_Moments_set_nu30(m, julia_to_cpp(v, double))
    end
    if s==:nu21
        jlopencv_Moments_set_nu21(m, julia_to_cpp(v, double))
    end
    if s==:nu12
        jlopencv_Moments_set_nu12(m, julia_to_cpp(v, double))
    end
    if s==:nu03
        jlopencv_Moments_set_nu03(m, julia_to_cpp(v, double))
    end
    return Base.setfield(m, s, v)
end
function Base.getproperty(m::SimpleBlobDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SimpleBlobDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_SimpleBlobDetector_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)

function create(cobj::Any, parameters::SimpleBlobDetector_Params)
	return cpp_to_julia(jlopencv_cv_SimpleBlobDetector_create(julia_to_cpp(cobj),julia_to_cpp(parameters)))
end
create(cobj::Any; parameters::SimpleBlobDetector_Params = SimpleBlobDetector::Params()) = create(cobj, parameters)
function Base.getproperty(m::AgastFeatureDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::AgastFeatureDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_AgastFeatureDetector_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)

function getNonmaxSuppression(cobj::Any)
	return cpp_to_julia(jlopencv_cv_AgastFeatureDetector_getNonmaxSuppression(julia_to_cpp(cobj)))
end
getNonmaxSuppression(cobj::Any; ) = getNonmaxSuppression(cobj)

function getThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_AgastFeatureDetector_getThreshold(julia_to_cpp(cobj)))
end
getThreshold(cobj::Any; ) = getThreshold(cobj)

function create(cobj::Any, threshold::Int32, nonmaxSuppression::Bool, type::AgastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_AgastFeatureDetector_create(julia_to_cpp(cobj),julia_to_cpp(threshold),julia_to_cpp(nonmaxSuppression),julia_to_cpp(type)))
end
create(cobj::Any; threshold::Int32 = 10, nonmaxSuppression::Bool = true, type::AgastFeatureDetector_DetectorType = AgastFeatureDetector::OAST_9_16) = create(cobj, threshold, nonmaxSuppression, type)

function getType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_AgastFeatureDetector_getType(julia_to_cpp(cobj)))
end
getType(cobj::Any; ) = getType(cobj)

function setNonmaxSuppression(cobj::Any, f::Bool)
	return cpp_to_julia(jlopencv_cv_AgastFeatureDetector_setNonmaxSuppression(julia_to_cpp(cobj),julia_to_cpp(f)))
end
setNonmaxSuppression(cobj::Any, f::Bool; ) = setNonmaxSuppression(cobj, f)

function setThreshold(cobj::Any, threshold::Int32)
	return cpp_to_julia(jlopencv_cv_AgastFeatureDetector_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setThreshold(cobj::Any, threshold::Int32; ) = setThreshold(cobj, threshold)

function setType(cobj::Any, type::AgastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_AgastFeatureDetector_setType(julia_to_cpp(cobj),julia_to_cpp(type)))
end
setType(cobj::Any, type::AgastFeatureDetector_DetectorType; ) = setType(cobj, type)
function Base.getproperty(m::SparseOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SparseOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function calc(cobj::Any, prevImg::Mat, nextImg::Mat, prevPts::Mat, nextPts::Mat, status::Mat, err::Mat)
	return cpp_to_julia(jlopencv_cv_SparseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err)))
end
calc(cobj::Any, prevImg::Mat, nextImg::Mat, prevPts::Mat, nextPts::Mat, status::Mat, err::Mat; ) = calc(cobj, prevImg, nextImg, prevPts, nextPts, status, err)

function calc(cobj::Any, prevImg::UMat, nextImg::UMat, prevPts::UMat, nextPts::UMat, status::UMat, err::UMat)
	return cpp_to_julia(jlopencv_cv_SparseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err)))
end
calc(cobj::Any, prevImg::UMat, nextImg::UMat, prevPts::UMat, nextPts::UMat, status::UMat, err::UMat; ) = calc(cobj, prevImg, nextImg, prevPts, nextPts, status, err)
function Base.getproperty(m::StereoBM, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::StereoBM, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setPreFilterType(cobj::Any, preFilterType::Int32)
	return cpp_to_julia(jlopencv_cv_StereoBM_setPreFilterType(julia_to_cpp(cobj),julia_to_cpp(preFilterType)))
end
setPreFilterType(cobj::Any, preFilterType::Int32; ) = setPreFilterType(cobj, preFilterType)

function getSmallerBlockSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoBM_getSmallerBlockSize(julia_to_cpp(cobj)))
end
getSmallerBlockSize(cobj::Any; ) = getSmallerBlockSize(cobj)

function getPreFilterType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoBM_getPreFilterType(julia_to_cpp(cobj)))
end
getPreFilterType(cobj::Any; ) = getPreFilterType(cobj)

function setSmallerBlockSize(cobj::Any, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_StereoBM_setSmallerBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end
setSmallerBlockSize(cobj::Any, blockSize::Int32; ) = setSmallerBlockSize(cobj, blockSize)

function create(cobj::Any, numDisparities::Int32, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_StereoBM_create(julia_to_cpp(cobj),julia_to_cpp(numDisparities),julia_to_cpp(blockSize)))
end
create(cobj::Any; numDisparities::Int32 = 0, blockSize::Int32 = 21) = create(cobj, numDisparities, blockSize)

function getROI2(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoBM_getROI2(julia_to_cpp(cobj)))
end
getROI2(cobj::Any; ) = getROI2(cobj)

function setROI1(cobj::Any, roi1::Rect)
	return cpp_to_julia(jlopencv_cv_StereoBM_setROI1(julia_to_cpp(cobj),julia_to_cpp(roi1)))
end
setROI1(cobj::Any, roi1::Rect; ) = setROI1(cobj, roi1)

function setTextureThreshold(cobj::Any, textureThreshold::Int32)
	return cpp_to_julia(jlopencv_cv_StereoBM_setTextureThreshold(julia_to_cpp(cobj),julia_to_cpp(textureThreshold)))
end
setTextureThreshold(cobj::Any, textureThreshold::Int32; ) = setTextureThreshold(cobj, textureThreshold)

function setROI2(cobj::Any, roi2::Rect)
	return cpp_to_julia(jlopencv_cv_StereoBM_setROI2(julia_to_cpp(cobj),julia_to_cpp(roi2)))
end
setROI2(cobj::Any, roi2::Rect; ) = setROI2(cobj, roi2)

function setPreFilterCap(cobj::Any, preFilterCap::Int32)
	return cpp_to_julia(jlopencv_cv_StereoBM_setPreFilterCap(julia_to_cpp(cobj),julia_to_cpp(preFilterCap)))
end
setPreFilterCap(cobj::Any, preFilterCap::Int32; ) = setPreFilterCap(cobj, preFilterCap)

function getUniquenessRatio(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoBM_getUniquenessRatio(julia_to_cpp(cobj)))
end
getUniquenessRatio(cobj::Any; ) = getUniquenessRatio(cobj)

function getPreFilterCap(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoBM_getPreFilterCap(julia_to_cpp(cobj)))
end
getPreFilterCap(cobj::Any; ) = getPreFilterCap(cobj)

function getROI1(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoBM_getROI1(julia_to_cpp(cobj)))
end
getROI1(cobj::Any; ) = getROI1(cobj)

function getPreFilterSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoBM_getPreFilterSize(julia_to_cpp(cobj)))
end
getPreFilterSize(cobj::Any; ) = getPreFilterSize(cobj)

function setUniquenessRatio(cobj::Any, uniquenessRatio::Int32)
	return cpp_to_julia(jlopencv_cv_StereoBM_setUniquenessRatio(julia_to_cpp(cobj),julia_to_cpp(uniquenessRatio)))
end
setUniquenessRatio(cobj::Any, uniquenessRatio::Int32; ) = setUniquenessRatio(cobj, uniquenessRatio)

function setPreFilterSize(cobj::Any, preFilterSize::Int32)
	return cpp_to_julia(jlopencv_cv_StereoBM_setPreFilterSize(julia_to_cpp(cobj),julia_to_cpp(preFilterSize)))
end
setPreFilterSize(cobj::Any, preFilterSize::Int32; ) = setPreFilterSize(cobj, preFilterSize)

function getTextureThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_StereoBM_getTextureThreshold(julia_to_cpp(cobj)))
end
getTextureThreshold(cobj::Any; ) = getTextureThreshold(cobj)
function Base.getproperty(m::CascadeClassifier, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::CascadeClassifier, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function load(cobj::Any, filename::String)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_load(julia_to_cpp(cobj),julia_to_cpp(filename)))
end
load(cobj::Any, filename::String; ) = load(cobj, filename)

function getFeatureType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_getFeatureType(julia_to_cpp(cobj)))
end
getFeatureType(cobj::Any; ) = getFeatureType(cobj)

function convert(cobj::Any, oldcascade::String, newcascade::String)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_convert(julia_to_cpp(cobj),julia_to_cpp(oldcascade),julia_to_cpp(newcascade)))
end
convert(cobj::Any, oldcascade::String, newcascade::String; ) = convert(cobj, oldcascade, newcascade)

function read(cobj::Any, node::FileNode)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_read(julia_to_cpp(cobj),julia_to_cpp(node)))
end
read(cobj::Any, node::FileNode; ) = read(cobj, node)

function detectMultiScale2(cobj::Any, image::Mat, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_detectMultiScale2(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale2(cobj::Any, image::Mat; scaleFactor::Float64 = 1.1, minNeighbors::Int32 = 3, flags::Int32 = 0, minSize::Size = Size(), maxSize::Size = Size()) = detectMultiScale2(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)

function detectMultiScale2(cobj::Any, image::UMat, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_detectMultiScale2(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale2(cobj::Any, image::UMat; scaleFactor::Float64 = 1.1, minNeighbors::Int32 = 3, flags::Int32 = 0, minSize::Size = Size(), maxSize::Size = Size()) = detectMultiScale2(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)

function isOldFormatCascade(cobj::Any)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_isOldFormatCascade(julia_to_cpp(cobj)))
end
isOldFormatCascade(cobj::Any; ) = isOldFormatCascade(cobj)

function detectMultiScale3(cobj::Any, image::Mat, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size, outputRejectLevels::Bool)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_detectMultiScale3(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize),julia_to_cpp(outputRejectLevels)))
end
detectMultiScale3(cobj::Any, image::Mat; scaleFactor::Float64 = 1.1, minNeighbors::Int32 = 3, flags::Int32 = 0, minSize::Size = Size(), maxSize::Size = Size(), outputRejectLevels::Bool = false) = detectMultiScale3(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize, outputRejectLevels)

function detectMultiScale3(cobj::Any, image::UMat, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size, outputRejectLevels::Bool)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_detectMultiScale3(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize),julia_to_cpp(outputRejectLevels)))
end
detectMultiScale3(cobj::Any, image::UMat; scaleFactor::Float64 = 1.1, minNeighbors::Int32 = 3, flags::Int32 = 0, minSize::Size = Size(), maxSize::Size = Size(), outputRejectLevels::Bool = false) = detectMultiScale3(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize, outputRejectLevels)

function getOriginalWindowSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_getOriginalWindowSize(julia_to_cpp(cobj)))
end
getOriginalWindowSize(cobj::Any; ) = getOriginalWindowSize(cobj)

function empty(cobj::Any)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_empty(julia_to_cpp(cobj)))
end
empty(cobj::Any; ) = empty(cobj)

function detectMultiScale(cobj::Any, image::Mat, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale(cobj::Any, image::Mat; scaleFactor::Float64 = 1.1, minNeighbors::Int32 = 3, flags::Int32 = 0, minSize::Size = Size(), maxSize::Size = Size()) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)

function detectMultiScale(cobj::Any, image::UMat, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size, maxSize::Size)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale(cobj::Any, image::UMat; scaleFactor::Float64 = 1.1, minNeighbors::Int32 = 3, flags::Int32 = 0, minSize::Size = Size(), maxSize::Size = Size()) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)
function Base.getproperty(m::FastFeatureDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FastFeatureDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FastFeatureDetector_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)

function getNonmaxSuppression(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FastFeatureDetector_getNonmaxSuppression(julia_to_cpp(cobj)))
end
getNonmaxSuppression(cobj::Any; ) = getNonmaxSuppression(cobj)

function getThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FastFeatureDetector_getThreshold(julia_to_cpp(cobj)))
end
getThreshold(cobj::Any; ) = getThreshold(cobj)

function create(cobj::Any, threshold::Int32, nonmaxSuppression::Bool, type::FastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_FastFeatureDetector_create(julia_to_cpp(cobj),julia_to_cpp(threshold),julia_to_cpp(nonmaxSuppression),julia_to_cpp(type)))
end
create(cobj::Any; threshold::Int32 = 10, nonmaxSuppression::Bool = true, type::FastFeatureDetector_DetectorType = FastFeatureDetector::TYPE_9_16) = create(cobj, threshold, nonmaxSuppression, type)

function getType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_FastFeatureDetector_getType(julia_to_cpp(cobj)))
end
getType(cobj::Any; ) = getType(cobj)

function setNonmaxSuppression(cobj::Any, f::Bool)
	return cpp_to_julia(jlopencv_cv_FastFeatureDetector_setNonmaxSuppression(julia_to_cpp(cobj),julia_to_cpp(f)))
end
setNonmaxSuppression(cobj::Any, f::Bool; ) = setNonmaxSuppression(cobj, f)

function setThreshold(cobj::Any, threshold::Int32)
	return cpp_to_julia(jlopencv_cv_FastFeatureDetector_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setThreshold(cobj::Any, threshold::Int32; ) = setThreshold(cobj, threshold)

function setType(cobj::Any, type::FastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_FastFeatureDetector_setType(julia_to_cpp(cobj),julia_to_cpp(type)))
end
setType(cobj::Any, type::FastFeatureDetector_DetectorType; ) = setType(cobj, type)
function Base.getproperty(m::AKAZE, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::AKAZE, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setNOctaveLayers(cobj::Any, octaveLayers::Int32)
	return cpp_to_julia(jlopencv_cv_AKAZE_setNOctaveLayers(julia_to_cpp(cobj),julia_to_cpp(octaveLayers)))
end
setNOctaveLayers(cobj::Any, octaveLayers::Int32; ) = setNOctaveLayers(cobj, octaveLayers)

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_AKAZE_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)

function setDescriptorType(cobj::Any, dtype::AKAZE_DescriptorType)
	return cpp_to_julia(jlopencv_cv_AKAZE_setDescriptorType(julia_to_cpp(cobj),julia_to_cpp(dtype)))
end
setDescriptorType(cobj::Any, dtype::AKAZE_DescriptorType; ) = setDescriptorType(cobj, dtype)

function getNOctaveLayers(cobj::Any)
	return cpp_to_julia(jlopencv_cv_AKAZE_getNOctaveLayers(julia_to_cpp(cobj)))
end
getNOctaveLayers(cobj::Any; ) = getNOctaveLayers(cobj)

function setNOctaves(cobj::Any, octaves::Int32)
	return cpp_to_julia(jlopencv_cv_AKAZE_setNOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end
setNOctaves(cobj::Any, octaves::Int32; ) = setNOctaves(cobj, octaves)

function getDescriptorType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_AKAZE_getDescriptorType(julia_to_cpp(cobj)))
end
getDescriptorType(cobj::Any; ) = getDescriptorType(cobj)

function getThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_AKAZE_getThreshold(julia_to_cpp(cobj)))
end
getThreshold(cobj::Any; ) = getThreshold(cobj)

function create(cobj::Any, descriptor_type::AKAZE_DescriptorType, descriptor_size::Int32, descriptor_channels::Int32, threshold::Float32, nOctaves::Int32, nOctaveLayers::Int32, diffusivity::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_AKAZE_create(julia_to_cpp(cobj),julia_to_cpp(descriptor_type),julia_to_cpp(descriptor_size),julia_to_cpp(descriptor_channels),julia_to_cpp(threshold),julia_to_cpp(nOctaves),julia_to_cpp(nOctaveLayers),julia_to_cpp(diffusivity)))
end
create(cobj::Any; descriptor_type::AKAZE_DescriptorType = AKAZE::DESCRIPTOR_MLDB, descriptor_size::Int32 = 0, descriptor_channels::Int32 = 3, threshold::Float32 = 0.001f, nOctaves::Int32 = 4, nOctaveLayers::Int32 = 4, diffusivity::KAZE_DiffusivityType = KAZE::DIFF_PM_G2) = create(cobj, descriptor_type, descriptor_size, descriptor_channels, threshold, nOctaves, nOctaveLayers, diffusivity)

function getNOctaves(cobj::Any)
	return cpp_to_julia(jlopencv_cv_AKAZE_getNOctaves(julia_to_cpp(cobj)))
end
getNOctaves(cobj::Any; ) = getNOctaves(cobj)

function setDescriptorChannels(cobj::Any, dch::Int32)
	return cpp_to_julia(jlopencv_cv_AKAZE_setDescriptorChannels(julia_to_cpp(cobj),julia_to_cpp(dch)))
end
setDescriptorChannels(cobj::Any, dch::Int32; ) = setDescriptorChannels(cobj, dch)

function setThreshold(cobj::Any, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_AKAZE_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
setThreshold(cobj::Any, threshold::Float64; ) = setThreshold(cobj, threshold)

function getDescriptorChannels(cobj::Any)
	return cpp_to_julia(jlopencv_cv_AKAZE_getDescriptorChannels(julia_to_cpp(cobj)))
end
getDescriptorChannels(cobj::Any; ) = getDescriptorChannels(cobj)

function setDescriptorSize(cobj::Any, dsize::Int32)
	return cpp_to_julia(jlopencv_cv_AKAZE_setDescriptorSize(julia_to_cpp(cobj),julia_to_cpp(dsize)))
end
setDescriptorSize(cobj::Any, dsize::Int32; ) = setDescriptorSize(cobj, dsize)

function setDiffusivity(cobj::Any, diff::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_AKAZE_setDiffusivity(julia_to_cpp(cobj),julia_to_cpp(diff)))
end
setDiffusivity(cobj::Any, diff::KAZE_DiffusivityType; ) = setDiffusivity(cobj, diff)

function getDiffusivity(cobj::Any)
	return cpp_to_julia(jlopencv_cv_AKAZE_getDiffusivity(julia_to_cpp(cobj)))
end
getDiffusivity(cobj::Any; ) = getDiffusivity(cobj)

function getDescriptorSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_AKAZE_getDescriptorSize(julia_to_cpp(cobj)))
end
getDescriptorSize(cobj::Any; ) = getDescriptorSize(cobj)
function Base.getproperty(m::DISOpticalFlow, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DISOpticalFlow, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function setVariationalRefinementAlpha(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_setVariationalRefinementAlpha(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setVariationalRefinementAlpha(cobj::Any, val::Float32; ) = setVariationalRefinementAlpha(cobj, val)

function getUseMeanNormalization(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_getUseMeanNormalization(julia_to_cpp(cobj)))
end
getUseMeanNormalization(cobj::Any; ) = getUseMeanNormalization(cobj)

function setVariationalRefinementDelta(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_setVariationalRefinementDelta(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setVariationalRefinementDelta(cobj::Any, val::Float32; ) = setVariationalRefinementDelta(cobj, val)

function getUseSpatialPropagation(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_getUseSpatialPropagation(julia_to_cpp(cobj)))
end
getUseSpatialPropagation(cobj::Any; ) = getUseSpatialPropagation(cobj)

function getVariationalRefinementIterations(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_getVariationalRefinementIterations(julia_to_cpp(cobj)))
end
getVariationalRefinementIterations(cobj::Any; ) = getVariationalRefinementIterations(cobj)

function getGradientDescentIterations(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_getGradientDescentIterations(julia_to_cpp(cobj)))
end
getGradientDescentIterations(cobj::Any; ) = getGradientDescentIterations(cobj)

function setVariationalRefinementIterations(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_setVariationalRefinementIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setVariationalRefinementIterations(cobj::Any, val::Int32; ) = setVariationalRefinementIterations(cobj, val)

function create(cobj::Any, preset::Int32)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_create(julia_to_cpp(cobj),julia_to_cpp(preset)))
end
create(cobj::Any; preset::Int32 = DISOpticalFlow::PRESET_FAST) = create(cobj, preset)

function setFinestScale(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_setFinestScale(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setFinestScale(cobj::Any, val::Int32; ) = setFinestScale(cobj, val)

function getVariationalRefinementAlpha(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_getVariationalRefinementAlpha(julia_to_cpp(cobj)))
end
getVariationalRefinementAlpha(cobj::Any; ) = getVariationalRefinementAlpha(cobj)

function setVariationalRefinementGamma(cobj::Any, val::Float32)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_setVariationalRefinementGamma(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setVariationalRefinementGamma(cobj::Any, val::Float32; ) = setVariationalRefinementGamma(cobj, val)

function getVariationalRefinementGamma(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_getVariationalRefinementGamma(julia_to_cpp(cobj)))
end
getVariationalRefinementGamma(cobj::Any; ) = getVariationalRefinementGamma(cobj)

function getPatchStride(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_getPatchStride(julia_to_cpp(cobj)))
end
getPatchStride(cobj::Any; ) = getPatchStride(cobj)

function setUseMeanNormalization(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_setUseMeanNormalization(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setUseMeanNormalization(cobj::Any, val::Bool; ) = setUseMeanNormalization(cobj, val)

function setUseSpatialPropagation(cobj::Any, val::Bool)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_setUseSpatialPropagation(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setUseSpatialPropagation(cobj::Any, val::Bool; ) = setUseSpatialPropagation(cobj, val)

function setPatchSize(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_setPatchSize(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setPatchSize(cobj::Any, val::Int32; ) = setPatchSize(cobj, val)

function setGradientDescentIterations(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_setGradientDescentIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setGradientDescentIterations(cobj::Any, val::Int32; ) = setGradientDescentIterations(cobj, val)

function getFinestScale(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_getFinestScale(julia_to_cpp(cobj)))
end
getFinestScale(cobj::Any; ) = getFinestScale(cobj)

function getPatchSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_getPatchSize(julia_to_cpp(cobj)))
end
getPatchSize(cobj::Any; ) = getPatchSize(cobj)

function getVariationalRefinementDelta(cobj::Any)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_getVariationalRefinementDelta(julia_to_cpp(cobj)))
end
getVariationalRefinementDelta(cobj::Any; ) = getVariationalRefinementDelta(cobj)

function setPatchStride(cobj::Any, val::Int32)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_setPatchStride(julia_to_cpp(cobj),julia_to_cpp(val)))
end
setPatchStride(cobj::Any, val::Int32; ) = setPatchStride(cobj, val)
function Base.getproperty(m::BOWTrainer, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWTrainer, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDescriptors(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BOWTrainer_getDescriptors(julia_to_cpp(cobj)))
end
getDescriptors(cobj::Any; ) = getDescriptors(cobj)

function cluster(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BOWTrainer_cluster(julia_to_cpp(cobj)))
end
cluster(cobj::Any; ) = cluster(cobj)

function cluster(cobj::Any, descriptors::Mat)
	return cpp_to_julia(jlopencv_cv_BOWTrainer_cluster(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
cluster(cobj::Any, descriptors::Mat; ) = cluster(cobj, descriptors)

function cluster(cobj::Any, descriptors::Mat)
	return cpp_to_julia(jlopencv_cv_BOWTrainer_cluster(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
cluster(cobj::Any, descriptors::Mat; ) = cluster(cobj, descriptors)

function add(cobj::Any, descriptors::Mat)
	return cpp_to_julia(jlopencv_cv_BOWTrainer_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
add(cobj::Any, descriptors::Mat; ) = add(cobj, descriptors)

function add(cobj::Any, descriptors::Mat)
	return cpp_to_julia(jlopencv_cv_BOWTrainer_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
add(cobj::Any, descriptors::Mat; ) = add(cobj, descriptors)

function clear(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BOWTrainer_clear(julia_to_cpp(cobj)))
end
clear(cobj::Any; ) = clear(cobj)

function descriptorsCount(cobj::Any)
	return cpp_to_julia(jlopencv_cv_BOWTrainer_descriptorsCount(julia_to_cpp(cobj)))
end
descriptorsCount(cobj::Any; ) = descriptorsCount(cobj)
function Base.getproperty(m::ORB, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ORB, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function getDefaultName(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ORB_getDefaultName(julia_to_cpp(cobj)))
end
getDefaultName(cobj::Any; ) = getDefaultName(cobj)

function getMaxFeatures(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ORB_getMaxFeatures(julia_to_cpp(cobj)))
end
getMaxFeatures(cobj::Any; ) = getMaxFeatures(cobj)

function setEdgeThreshold(cobj::Any, edgeThreshold::Int32)
	return cpp_to_julia(jlopencv_cv_ORB_setEdgeThreshold(julia_to_cpp(cobj),julia_to_cpp(edgeThreshold)))
end
setEdgeThreshold(cobj::Any, edgeThreshold::Int32; ) = setEdgeThreshold(cobj, edgeThreshold)

function setFirstLevel(cobj::Any, firstLevel::Int32)
	return cpp_to_julia(jlopencv_cv_ORB_setFirstLevel(julia_to_cpp(cobj),julia_to_cpp(firstLevel)))
end
setFirstLevel(cobj::Any, firstLevel::Int32; ) = setFirstLevel(cobj, firstLevel)

function create(cobj::Any, nfeatures::Int32, scaleFactor::Float32, nlevels::Int32, edgeThreshold::Int32, firstLevel::Int32, WTA_K::Int32, scoreType::ORB_ScoreType, patchSize::Int32, fastThreshold::Int32)
	return cpp_to_julia(jlopencv_cv_ORB_create(julia_to_cpp(cobj),julia_to_cpp(nfeatures),julia_to_cpp(scaleFactor),julia_to_cpp(nlevels),julia_to_cpp(edgeThreshold),julia_to_cpp(firstLevel),julia_to_cpp(WTA_K),julia_to_cpp(scoreType),julia_to_cpp(patchSize),julia_to_cpp(fastThreshold)))
end
create(cobj::Any; nfeatures::Int32 = 500, scaleFactor::Float32 = 1.2f, nlevels::Int32 = 8, edgeThreshold::Int32 = 31, firstLevel::Int32 = 0, WTA_K::Int32 = 2, scoreType::ORB_ScoreType = ORB::HARRIS_SCORE, patchSize::Int32 = 31, fastThreshold::Int32 = 20) = create(cobj, nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, scoreType, patchSize, fastThreshold)

function getFastThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ORB_getFastThreshold(julia_to_cpp(cobj)))
end
getFastThreshold(cobj::Any; ) = getFastThreshold(cobj)

function setMaxFeatures(cobj::Any, maxFeatures::Int32)
	return cpp_to_julia(jlopencv_cv_ORB_setMaxFeatures(julia_to_cpp(cobj),julia_to_cpp(maxFeatures)))
end
setMaxFeatures(cobj::Any, maxFeatures::Int32; ) = setMaxFeatures(cobj, maxFeatures)

function getWTA_K(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ORB_getWTA_K(julia_to_cpp(cobj)))
end
getWTA_K(cobj::Any; ) = getWTA_K(cobj)

function getNLevels(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ORB_getNLevels(julia_to_cpp(cobj)))
end
getNLevels(cobj::Any; ) = getNLevels(cobj)

function setNLevels(cobj::Any, nlevels::Int32)
	return cpp_to_julia(jlopencv_cv_ORB_setNLevels(julia_to_cpp(cobj),julia_to_cpp(nlevels)))
end
setNLevels(cobj::Any, nlevels::Int32; ) = setNLevels(cobj, nlevels)

function setFastThreshold(cobj::Any, fastThreshold::Int32)
	return cpp_to_julia(jlopencv_cv_ORB_setFastThreshold(julia_to_cpp(cobj),julia_to_cpp(fastThreshold)))
end
setFastThreshold(cobj::Any, fastThreshold::Int32; ) = setFastThreshold(cobj, fastThreshold)

function getScaleFactor(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ORB_getScaleFactor(julia_to_cpp(cobj)))
end
getScaleFactor(cobj::Any; ) = getScaleFactor(cobj)

function setPatchSize(cobj::Any, patchSize::Int32)
	return cpp_to_julia(jlopencv_cv_ORB_setPatchSize(julia_to_cpp(cobj),julia_to_cpp(patchSize)))
end
setPatchSize(cobj::Any, patchSize::Int32; ) = setPatchSize(cobj, patchSize)

function setWTA_K(cobj::Any, wta_k::Int32)
	return cpp_to_julia(jlopencv_cv_ORB_setWTA_K(julia_to_cpp(cobj),julia_to_cpp(wta_k)))
end
setWTA_K(cobj::Any, wta_k::Int32; ) = setWTA_K(cobj, wta_k)

function setScaleFactor(cobj::Any, scaleFactor::Float64)
	return cpp_to_julia(jlopencv_cv_ORB_setScaleFactor(julia_to_cpp(cobj),julia_to_cpp(scaleFactor)))
end
setScaleFactor(cobj::Any, scaleFactor::Float64; ) = setScaleFactor(cobj, scaleFactor)

function getPatchSize(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ORB_getPatchSize(julia_to_cpp(cobj)))
end
getPatchSize(cobj::Any; ) = getPatchSize(cobj)

function getEdgeThreshold(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ORB_getEdgeThreshold(julia_to_cpp(cobj)))
end
getEdgeThreshold(cobj::Any; ) = getEdgeThreshold(cobj)

function getFirstLevel(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ORB_getFirstLevel(julia_to_cpp(cobj)))
end
getFirstLevel(cobj::Any; ) = getFirstLevel(cobj)

function getScoreType(cobj::Any)
	return cpp_to_julia(jlopencv_cv_ORB_getScoreType(julia_to_cpp(cobj)))
end
getScoreType(cobj::Any; ) = getScoreType(cobj)

function setScoreType(cobj::Any, scoreType::ORB_ScoreType)
	return cpp_to_julia(jlopencv_cv_ORB_setScoreType(julia_to_cpp(cobj),julia_to_cpp(scoreType)))
end
setScoreType(cobj::Any, scoreType::ORB_ScoreType; ) = setScoreType(cobj, scoreType)
function Base.getproperty(m::QRCodeDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::QRCodeDetector, s::Symbol, v)
    return Base.setfield(m, s, v)
end

function detectAndDecode(cobj::Any, img::Mat, points::Mat, straight_qrcode::Mat)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_detectAndDecode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
detectAndDecode(cobj::Any, img::Mat, points::Mat, straight_qrcode::Mat; ) = detectAndDecode(cobj, img, points, straight_qrcode)

function detectAndDecode(cobj::Any, img::UMat, points::UMat, straight_qrcode::UMat)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_detectAndDecode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
detectAndDecode(cobj::Any, img::UMat, points::UMat, straight_qrcode::UMat; ) = detectAndDecode(cobj, img, points, straight_qrcode)

function detect(cobj::Any, img::Mat, points::Mat)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detect(cobj::Any, img::Mat, points::Mat; ) = detect(cobj, img, points)

function detect(cobj::Any, img::UMat, points::UMat)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detect(cobj::Any, img::UMat, points::UMat; ) = detect(cobj, img, points)

function decodeMulti(cobj::Any, img::Mat, points::Mat)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_decodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
decodeMulti(cobj::Any, img::Mat, points::Mat; ) = decodeMulti(cobj, img, points)

function decodeMulti(cobj::Any, img::UMat, points::UMat)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_decodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
decodeMulti(cobj::Any, img::UMat, points::UMat; ) = decodeMulti(cobj, img, points)

function detectAndDecodeMulti(cobj::Any, img::Mat, points::Mat)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_detectAndDecodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detectAndDecodeMulti(cobj::Any, img::Mat, points::Mat; ) = detectAndDecodeMulti(cobj, img, points)

function detectAndDecodeMulti(cobj::Any, img::UMat, points::UMat)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_detectAndDecodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detectAndDecodeMulti(cobj::Any, img::UMat, points::UMat; ) = detectAndDecodeMulti(cobj, img, points)

function decode(cobj::Any, img::Mat, points::Mat, straight_qrcode::Mat)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_decode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
decode(cobj::Any, img::Mat, points::Mat, straight_qrcode::Mat; ) = decode(cobj, img, points, straight_qrcode)

function decode(cobj::Any, img::UMat, points::UMat, straight_qrcode::UMat)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_decode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
decode(cobj::Any, img::UMat, points::UMat, straight_qrcode::UMat; ) = decode(cobj, img, points, straight_qrcode)

function detectMulti(cobj::Any, img::Mat, points::Mat)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_detectMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detectMulti(cobj::Any, img::Mat, points::Mat; ) = detectMulti(cobj, img, points)

function detectMulti(cobj::Any, img::UMat, points::UMat)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_detectMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detectMulti(cobj::Any, img::UMat, points::UMat; ) = detectMulti(cobj, img, points)

function setEpsY(cobj::Any, epsY::Float64)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_setEpsY(julia_to_cpp(cobj),julia_to_cpp(epsY)))
end
setEpsY(cobj::Any, epsY::Float64; ) = setEpsY(cobj, epsY)

function setEpsX(cobj::Any, epsX::Float64)
	return cpp_to_julia(jlopencv_cv_QRCodeDetector_setEpsX(julia_to_cpp(cobj),julia_to_cpp(epsX)))
end
setEpsX(cobj::Any, epsX::Float64; ) = setEpsX(cobj, epsX)

function getDerivKernels(dx::Int32, dy::Int32, ksize::Int32, kx::Mat, ky::Mat, normalize::Bool, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_getDerivKernels(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(kx),julia_to_cpp(ky),julia_to_cpp(normalize),julia_to_cpp(ktype)))
end
getDerivKernels(dx::Int32, dy::Int32, ksize::Int32, kx::Mat, ky::Mat; normalize::Bool = false, ktype::Int32 = CV_32F) = getDerivKernels(dx, dy, ksize, kx, ky, normalize, ktype)

function getDerivKernels(dx::Int32, dy::Int32, ksize::Int32, kx::UMat, ky::UMat, normalize::Bool, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_getDerivKernels(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(kx),julia_to_cpp(ky),julia_to_cpp(normalize),julia_to_cpp(ktype)))
end
getDerivKernels(dx::Int32, dy::Int32, ksize::Int32, kx::UMat, ky::UMat; normalize::Bool = false, ktype::Int32 = CV_32F) = getDerivKernels(dx, dy, ksize, kx, ky, normalize, ktype)

function computeCorrespondEpilines(points::Mat, whichImage::Int32, F::Mat, lines::Mat)
	return cpp_to_julia(jlopencv_cv_computeCorrespondEpilines(julia_to_cpp(points),julia_to_cpp(whichImage),julia_to_cpp(F),julia_to_cpp(lines)))
end
computeCorrespondEpilines(points::Mat, whichImage::Int32, F::Mat, lines::Mat; ) = computeCorrespondEpilines(points, whichImage, F, lines)

function computeCorrespondEpilines(points::UMat, whichImage::Int32, F::UMat, lines::UMat)
	return cpp_to_julia(jlopencv_cv_computeCorrespondEpilines(julia_to_cpp(points),julia_to_cpp(whichImage),julia_to_cpp(F),julia_to_cpp(lines)))
end
computeCorrespondEpilines(points::UMat, whichImage::Int32, F::UMat, lines::UMat; ) = computeCorrespondEpilines(points, whichImage, F, lines)

function eigen(src::Mat, eigenvalues::Mat, eigenvectors::Mat)
	return cpp_to_julia(jlopencv_cv_eigen(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigen(src::Mat, eigenvalues::Mat, eigenvectors::Mat; ) = eigen(src, eigenvalues, eigenvectors)

function eigen(src::UMat, eigenvalues::UMat, eigenvectors::UMat)
	return cpp_to_julia(jlopencv_cv_eigen(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigen(src::UMat, eigenvalues::UMat, eigenvectors::UMat; ) = eigen(src, eigenvalues, eigenvectors)

function boundingRect(array::Mat)
	return cpp_to_julia(jlopencv_cv_boundingRect(julia_to_cpp(array)))
end
boundingRect(array::Mat; ) = boundingRect(array)

function boundingRect(array::UMat)
	return cpp_to_julia(jlopencv_cv_boundingRect(julia_to_cpp(array)))
end
boundingRect(array::UMat; ) = boundingRect(array)

function hconcat(src::vector{Mat}, dst::Mat)
	return cpp_to_julia(jlopencv_cv_hconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
hconcat(src::vector{Mat}, dst::Mat; ) = hconcat(src, dst)

function hconcat(src::vector{UMat}, dst::UMat)
	return cpp_to_julia(jlopencv_cv_hconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
hconcat(src::vector{UMat}, dst::UMat; ) = hconcat(src, dst)

function moments(array::Mat, binaryImage::Bool)
	return cpp_to_julia(jlopencv_cv_moments(julia_to_cpp(array),julia_to_cpp(binaryImage)))
end
moments(array::Mat; binaryImage::Bool = false) = moments(array, binaryImage)

function moments(array::UMat, binaryImage::Bool)
	return cpp_to_julia(jlopencv_cv_moments(julia_to_cpp(array),julia_to_cpp(binaryImage)))
end
moments(array::UMat; binaryImage::Bool = false) = moments(array, binaryImage)

function idct(src::Mat, dst::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_idct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
idct(src::Mat, dst::Mat; flags::Int32 = 0) = idct(src, dst, flags)

function idct(src::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_idct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
idct(src::UMat, dst::UMat; flags::Int32 = 0) = idct(src, dst, flags)

function accumulateSquare(src::Mat, dst::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_accumulateSquare(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateSquare(src::Mat, dst::Mat; mask::Mat = Mat()) = accumulateSquare(src, dst, mask)

function accumulateSquare(src::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_accumulateSquare(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateSquare(src::UMat, dst::UMat; mask::UMat = UMat()) = accumulateSquare(src, dst, mask)

function arcLength(curve::Mat, closed::Bool)
	return cpp_to_julia(jlopencv_cv_arcLength(julia_to_cpp(curve),julia_to_cpp(closed)))
end
arcLength(curve::Mat, closed::Bool; ) = arcLength(curve, closed)

function arcLength(curve::UMat, closed::Bool)
	return cpp_to_julia(jlopencv_cv_arcLength(julia_to_cpp(curve),julia_to_cpp(closed)))
end
arcLength(curve::UMat, closed::Bool; ) = arcLength(curve, closed)

function Laplacian(src::Mat, ddepth::Int32, dst::Mat, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_Laplacian(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Laplacian(src::Mat, ddepth::Int32, dst::Mat; ksize::Int32 = 1, scale::Float64 = 1, delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = Laplacian(src, ddepth, dst, ksize, scale, delta, borderType)

function Laplacian(src::UMat, ddepth::Int32, dst::UMat, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_Laplacian(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Laplacian(src::UMat, ddepth::Int32, dst::UMat; ksize::Int32 = 1, scale::Float64 = 1, delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = Laplacian(src, ddepth, dst, ksize, scale, delta, borderType)

function medianBlur(src::Mat, ksize::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_medianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst)))
end
medianBlur(src::Mat, ksize::Int32, dst::Mat; ) = medianBlur(src, ksize, dst)

function medianBlur(src::UMat, ksize::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_medianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst)))
end
medianBlur(src::UMat, ksize::Int32, dst::UMat; ) = medianBlur(src, ksize, dst)

function createHanningWindow(winSize::Size, type::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_createHanningWindow(julia_to_cpp(winSize),julia_to_cpp(type),julia_to_cpp(dst)))
end
createHanningWindow(winSize::Size, type::Int32, dst::Mat; ) = createHanningWindow(winSize, type, dst)

function createHanningWindow(winSize::Size, type::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_createHanningWindow(julia_to_cpp(winSize),julia_to_cpp(type),julia_to_cpp(dst)))
end
createHanningWindow(winSize::Size, type::Int32, dst::UMat; ) = createHanningWindow(winSize, type, dst)

function equalizeHist(src::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_equalizeHist(julia_to_cpp(src),julia_to_cpp(dst)))
end
equalizeHist(src::Mat, dst::Mat; ) = equalizeHist(src, dst)

function equalizeHist(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_equalizeHist(julia_to_cpp(src),julia_to_cpp(dst)))
end
equalizeHist(src::UMat, dst::UMat; ) = equalizeHist(src, dst)

function polylines(img::Mat, pts::vector{Mat}, isClosed::Bool, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_polylines(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(isClosed),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
polylines(img::Mat, pts::vector{Mat}, isClosed::Bool, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = polylines(img, pts, isClosed, color, thickness, lineType, shift)

function polylines(img::UMat, pts::vector{UMat}, isClosed::Bool, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_polylines(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(isClosed),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
polylines(img::UMat, pts::vector{UMat}, isClosed::Bool, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = polylines(img, pts, isClosed, color, thickness, lineType, shift)

function extractChannel(src::Mat, coi::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_extractChannel(julia_to_cpp(src),julia_to_cpp(coi),julia_to_cpp(dst)))
end
extractChannel(src::Mat, coi::Int32, dst::Mat; ) = extractChannel(src, coi, dst)

function extractChannel(src::UMat, coi::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_extractChannel(julia_to_cpp(src),julia_to_cpp(coi),julia_to_cpp(dst)))
end
extractChannel(src::UMat, coi::Int32, dst::UMat; ) = extractChannel(src, coi, dst)

function displayStatusBar(winname::String, text::String, delayms::Int32)
	return cpp_to_julia(jlopencv_cv_displayStatusBar(julia_to_cpp(winname),julia_to_cpp(text),julia_to_cpp(delayms)))
end
displayStatusBar(winname::String, text::String; delayms::Int32 = 0) = displayStatusBar(winname, text, delayms)

function threshold(src::Mat, thresh::Float64, maxval::Float64, type::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_threshold(julia_to_cpp(src),julia_to_cpp(thresh),julia_to_cpp(maxval),julia_to_cpp(type),julia_to_cpp(dst)))
end
threshold(src::Mat, thresh::Float64, maxval::Float64, type::Int32, dst::Mat; ) = threshold(src, thresh, maxval, type, dst)

function threshold(src::UMat, thresh::Float64, maxval::Float64, type::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_threshold(julia_to_cpp(src),julia_to_cpp(thresh),julia_to_cpp(maxval),julia_to_cpp(type),julia_to_cpp(dst)))
end
threshold(src::UMat, thresh::Float64, maxval::Float64, type::Int32, dst::UMat; ) = threshold(src, thresh, maxval, type, dst)

function invertAffineTransform(M::Mat, iM::Mat)
	return cpp_to_julia(jlopencv_cv_invertAffineTransform(julia_to_cpp(M),julia_to_cpp(iM)))
end
invertAffineTransform(M::Mat, iM::Mat; ) = invertAffineTransform(M, iM)

function invertAffineTransform(M::UMat, iM::UMat)
	return cpp_to_julia(jlopencv_cv_invertAffineTransform(julia_to_cpp(M),julia_to_cpp(iM)))
end
invertAffineTransform(M::UMat, iM::UMat; ) = invertAffineTransform(M, iM)

function getTrackbarPos(trackbarname::String, winname::String)
	return cpp_to_julia(jlopencv_cv_getTrackbarPos(julia_to_cpp(trackbarname),julia_to_cpp(winname)))
end
getTrackbarPos(trackbarname::String, winname::String; ) = getTrackbarPos(trackbarname, winname)

function find4QuadCornerSubpix(img::Mat, corners::Mat, region_size::Size)
	return cpp_to_julia(jlopencv_cv_find4QuadCornerSubpix(julia_to_cpp(img),julia_to_cpp(corners),julia_to_cpp(region_size)))
end
find4QuadCornerSubpix(img::Mat, corners::Mat, region_size::Size; ) = find4QuadCornerSubpix(img, corners, region_size)

function find4QuadCornerSubpix(img::UMat, corners::UMat, region_size::Size)
	return cpp_to_julia(jlopencv_cv_find4QuadCornerSubpix(julia_to_cpp(img),julia_to_cpp(corners),julia_to_cpp(region_size)))
end
find4QuadCornerSubpix(img::UMat, corners::UMat, region_size::Size; ) = find4QuadCornerSubpix(img, corners, region_size)

function checkRange(a::Mat, quiet::Bool, minVal::Float64, maxVal::Float64)
	return cpp_to_julia(jlopencv_cv_checkRange(julia_to_cpp(a),julia_to_cpp(quiet),julia_to_cpp(minVal),julia_to_cpp(maxVal)))
end
checkRange(a::Mat; quiet::Bool = true, minVal::Float64 = -DBL_MAX, maxVal::Float64 = DBL_MAX) = checkRange(a, quiet, minVal, maxVal)

function checkRange(a::UMat, quiet::Bool, minVal::Float64, maxVal::Float64)
	return cpp_to_julia(jlopencv_cv_checkRange(julia_to_cpp(a),julia_to_cpp(quiet),julia_to_cpp(minVal),julia_to_cpp(maxVal)))
end
checkRange(a::UMat; quiet::Bool = true, minVal::Float64 = -DBL_MAX, maxVal::Float64 = DBL_MAX) = checkRange(a, quiet, minVal, maxVal)

function createGeneralizedHoughGuil()
	return cpp_to_julia(jlopencv_cv_createGeneralizedHoughGuil())
end
createGeneralizedHoughGuil(; ) = createGeneralizedHoughGuil()

function PSNR(src1::Mat, src2::Mat, R::Float64)
	return cpp_to_julia(jlopencv_cv_PSNR(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(R)))
end
PSNR(src1::Mat, src2::Mat; R::Float64 = 255.) = PSNR(src1, src2, R)

function PSNR(src1::UMat, src2::UMat, R::Float64)
	return cpp_to_julia(jlopencv_cv_PSNR(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(R)))
end
PSNR(src1::UMat, src2::UMat; R::Float64 = 255.) = PSNR(src1, src2, R)

function randn(dst::Mat, mean::Mat, stddev::Mat)
	return cpp_to_julia(jlopencv_cv_randn(julia_to_cpp(dst),julia_to_cpp(mean),julia_to_cpp(stddev)))
end
randn(dst::Mat, mean::Mat, stddev::Mat; ) = randn(dst, mean, stddev)

function randn(dst::UMat, mean::UMat, stddev::UMat)
	return cpp_to_julia(jlopencv_cv_randn(julia_to_cpp(dst),julia_to_cpp(mean),julia_to_cpp(stddev)))
end
randn(dst::UMat, mean::UMat, stddev::UMat; ) = randn(dst, mean, stddev)

function phaseCorrelate(src1::Mat, src2::Mat, window::Mat)
	return cpp_to_julia(jlopencv_cv_phaseCorrelate(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(window)))
end
phaseCorrelate(src1::Mat, src2::Mat; window::Mat = Mat()) = phaseCorrelate(src1, src2, window)

function phaseCorrelate(src1::UMat, src2::UMat, window::UMat)
	return cpp_to_julia(jlopencv_cv_phaseCorrelate(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(window)))
end
phaseCorrelate(src1::UMat, src2::UMat; window::UMat = UMat()) = phaseCorrelate(src1, src2, window)

function HoughLines(image::Mat, rho::Float64, theta::Float64, threshold::Int32, lines::Mat, srn::Float64, stn::Float64, min_theta::Float64, max_theta::Float64)
	return cpp_to_julia(jlopencv_cv_HoughLines(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(srn),julia_to_cpp(stn),julia_to_cpp(min_theta),julia_to_cpp(max_theta)))
end
HoughLines(image::Mat, rho::Float64, theta::Float64, threshold::Int32, lines::Mat; srn::Float64 = 0, stn::Float64 = 0, min_theta::Float64 = 0, max_theta::Float64 = CV_PI) = HoughLines(image, rho, theta, threshold, lines, srn, stn, min_theta, max_theta)

function HoughLines(image::UMat, rho::Float64, theta::Float64, threshold::Int32, lines::UMat, srn::Float64, stn::Float64, min_theta::Float64, max_theta::Float64)
	return cpp_to_julia(jlopencv_cv_HoughLines(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(srn),julia_to_cpp(stn),julia_to_cpp(min_theta),julia_to_cpp(max_theta)))
end
HoughLines(image::UMat, rho::Float64, theta::Float64, threshold::Int32, lines::UMat; srn::Float64 = 0, stn::Float64 = 0, min_theta::Float64 = 0, max_theta::Float64 = CV_PI) = HoughLines(image, rho, theta, threshold, lines, srn, stn, min_theta, max_theta)

function convertPointsToHomogeneous(src::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_convertPointsToHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsToHomogeneous(src::Mat, dst::Mat; ) = convertPointsToHomogeneous(src, dst)

function convertPointsToHomogeneous(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_convertPointsToHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsToHomogeneous(src::UMat, dst::UMat; ) = convertPointsToHomogeneous(src, dst)

function addWeighted(src1::Mat, alpha::Float64, src2::Mat, beta::Float64, gamma::Float64, dst::Mat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_addWeighted(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(beta),julia_to_cpp(gamma),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
addWeighted(src1::Mat, alpha::Float64, src2::Mat, beta::Float64, gamma::Float64, dst::Mat; dtype::Int32 = -1) = addWeighted(src1, alpha, src2, beta, gamma, dst, dtype)

function addWeighted(src1::UMat, alpha::Float64, src2::UMat, beta::Float64, gamma::Float64, dst::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_addWeighted(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(beta),julia_to_cpp(gamma),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
addWeighted(src1::UMat, alpha::Float64, src2::UMat, beta::Float64, gamma::Float64, dst::UMat; dtype::Int32 = -1) = addWeighted(src1, alpha, src2, beta, gamma, dst, dtype)

function add(src1::Mat, src2::Mat, dst::Mat, mask::Mat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_add(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
add(src1::Mat, src2::Mat, dst::Mat; mask::Mat = Mat(), dtype::Int32 = -1) = add(src1, src2, dst, mask, dtype)

function add(src1::UMat, src2::UMat, dst::UMat, mask::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_add(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
add(src1::UMat, src2::UMat, dst::UMat; mask::UMat = UMat(), dtype::Int32 = -1) = add(src1, src2, dst, mask, dtype)

function integral3(src::Mat, sum::Mat, sqsum::Mat, tilted::Mat, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_integral3(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(tilted),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral3(src::Mat, sum::Mat, sqsum::Mat, tilted::Mat; sdepth::Int32 = -1, sqdepth::Int32 = -1) = integral3(src, sum, sqsum, tilted, sdepth, sqdepth)

function integral3(src::UMat, sum::UMat, sqsum::UMat, tilted::UMat, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_integral3(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(tilted),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral3(src::UMat, sum::UMat, sqsum::UMat, tilted::UMat; sdepth::Int32 = -1, sqdepth::Int32 = -1) = integral3(src, sum, sqsum, tilted, sdepth, sqdepth)

function integral2(src::Mat, sum::Mat, sqsum::Mat, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_integral2(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral2(src::Mat, sum::Mat, sqsum::Mat; sdepth::Int32 = -1, sqdepth::Int32 = -1) = integral2(src, sum, sqsum, sdepth, sqdepth)

function integral2(src::UMat, sum::UMat, sqsum::UMat, sdepth::Int32, sqdepth::Int32)
	return cpp_to_julia(jlopencv_cv_integral2(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral2(src::UMat, sum::UMat, sqsum::UMat; sdepth::Int32 = -1, sqdepth::Int32 = -1) = integral2(src, sum, sqsum, sdepth, sqdepth)

function connectedComponentsWithAlgorithm(image::Mat, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::Mat)
	return cpp_to_julia(jlopencv_cv_connectedComponentsWithAlgorithm(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels)))
end
connectedComponentsWithAlgorithm(image::Mat, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::Mat; ) = connectedComponentsWithAlgorithm(image, connectivity, ltype, ccltype, labels)

function connectedComponentsWithAlgorithm(image::UMat, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::UMat)
	return cpp_to_julia(jlopencv_cv_connectedComponentsWithAlgorithm(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels)))
end
connectedComponentsWithAlgorithm(image::UMat, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::UMat; ) = connectedComponentsWithAlgorithm(image, connectivity, ltype, ccltype, labels)

function rectify3Collinear(cameraMatrix1::Mat, distCoeffs1::Mat, cameraMatrix2::Mat, distCoeffs2::Mat, cameraMatrix3::Mat, distCoeffs3::Mat, imgpt1::vector{Mat}, imgpt3::vector{Mat}, imageSize::Size, R12::Mat, T12::Mat, R13::Mat, T13::Mat, alpha::Float64, newImgSize::Size, flags::Int32, R1::Mat, R2::Mat, R3::Mat, P1::Mat, P2::Mat, P3::Mat, Q::Mat)
	return cpp_to_julia(jlopencv_cv_rectify3Collinear(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(cameraMatrix3),julia_to_cpp(distCoeffs3),julia_to_cpp(imgpt1),julia_to_cpp(imgpt3),julia_to_cpp(imageSize),julia_to_cpp(R12),julia_to_cpp(T12),julia_to_cpp(R13),julia_to_cpp(T13),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(flags),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(R3),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(P3),julia_to_cpp(Q)))
end
rectify3Collinear(cameraMatrix1::Mat, distCoeffs1::Mat, cameraMatrix2::Mat, distCoeffs2::Mat, cameraMatrix3::Mat, distCoeffs3::Mat, imgpt1::vector{Mat}, imgpt3::vector{Mat}, imageSize::Size, R12::Mat, T12::Mat, R13::Mat, T13::Mat, alpha::Float64, newImgSize::Size, flags::Int32, R1::Mat, R2::Mat, R3::Mat, P1::Mat, P2::Mat, P3::Mat, Q::Mat; ) = rectify3Collinear(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, cameraMatrix3, distCoeffs3, imgpt1, imgpt3, imageSize, R12, T12, R13, T13, alpha, newImgSize, flags, R1, R2, R3, P1, P2, P3, Q)

function rectify3Collinear(cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, cameraMatrix3::UMat, distCoeffs3::UMat, imgpt1::vector{UMat}, imgpt3::vector{UMat}, imageSize::Size, R12::UMat, T12::UMat, R13::UMat, T13::UMat, alpha::Float64, newImgSize::Size, flags::Int32, R1::UMat, R2::UMat, R3::UMat, P1::UMat, P2::UMat, P3::UMat, Q::UMat)
	return cpp_to_julia(jlopencv_cv_rectify3Collinear(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(cameraMatrix3),julia_to_cpp(distCoeffs3),julia_to_cpp(imgpt1),julia_to_cpp(imgpt3),julia_to_cpp(imageSize),julia_to_cpp(R12),julia_to_cpp(T12),julia_to_cpp(R13),julia_to_cpp(T13),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(flags),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(R3),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(P3),julia_to_cpp(Q)))
end
rectify3Collinear(cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, cameraMatrix3::UMat, distCoeffs3::UMat, imgpt1::vector{UMat}, imgpt3::vector{UMat}, imageSize::Size, R12::UMat, T12::UMat, R13::UMat, T13::UMat, alpha::Float64, newImgSize::Size, flags::Int32, R1::UMat, R2::UMat, R3::UMat, P1::UMat, P2::UMat, P3::UMat, Q::UMat; ) = rectify3Collinear(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, cameraMatrix3, distCoeffs3, imgpt1, imgpt3, imageSize, R12, T12, R13, T13, alpha, newImgSize, flags, R1, R2, R3, P1, P2, P3, Q)

function circle(img::Mat, center::PoInt32, radius::Int32, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_circle(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(radius),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
circle(img::Mat, center::PoInt32, radius::Int32, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = circle(img, center, radius, color, thickness, lineType, shift)

function circle(img::UMat, center::PoInt32, radius::Int32, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_circle(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(radius),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
circle(img::UMat, center::PoInt32, radius::Int32, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = circle(img, center, radius, color, thickness, lineType, shift)

function pyrDown(src::Mat, dst::Mat, dstsize::Size, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_pyrDown(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrDown(src::Mat, dst::Mat; dstsize::Size = Size(), borderType::Int32 = BORDER_DEFAULT) = pyrDown(src, dst, dstsize, borderType)

function pyrDown(src::UMat, dst::UMat, dstsize::Size, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_pyrDown(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrDown(src::UMat, dst::UMat; dstsize::Size = Size(), borderType::Int32 = BORDER_DEFAULT) = pyrDown(src, dst, dstsize, borderType)

function norm(src1::Mat, normType::Int32, mask::Mat)
	return cpp_to_julia(jlopencv_cv_norm(julia_to_cpp(src1),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::Mat; normType::Int32 = NORM_L2, mask::Mat = Mat()) = norm(src1, normType, mask)

function norm(src1::UMat, normType::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_norm(julia_to_cpp(src1),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::UMat; normType::Int32 = NORM_L2, mask::UMat = UMat()) = norm(src1, normType, mask)

function norm(src1::Mat, src2::Mat, normType::Int32, mask::Mat)
	return cpp_to_julia(jlopencv_cv_norm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::Mat, src2::Mat; normType::Int32 = NORM_L2, mask::Mat = Mat()) = norm(src1, src2, normType, mask)

function norm(src1::UMat, src2::UMat, normType::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_norm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::UMat, src2::UMat; normType::Int32 = NORM_L2, mask::UMat = UMat()) = norm(src1, src2, normType, mask)

function randu(dst::Mat, low::Mat, high::Mat)
	return cpp_to_julia(jlopencv_cv_randu(julia_to_cpp(dst),julia_to_cpp(low),julia_to_cpp(high)))
end
randu(dst::Mat, low::Mat, high::Mat; ) = randu(dst, low, high)

function randu(dst::UMat, low::UMat, high::UMat)
	return cpp_to_julia(jlopencv_cv_randu(julia_to_cpp(dst),julia_to_cpp(low),julia_to_cpp(high)))
end
randu(dst::UMat, low::UMat, high::UMat; ) = randu(dst, low, high)

function imreadmulti(filename::String, flags::Int32)
	return cpp_to_julia(jlopencv_cv_imreadmulti(julia_to_cpp(filename),julia_to_cpp(flags)))
end
imreadmulti(filename::String; flags::Int32 = IMREAD_ANYCOLOR) = imreadmulti(filename, flags)

function imreadmulti(filename::String, flags::Int32)
	return cpp_to_julia(jlopencv_cv_imreadmulti(julia_to_cpp(filename),julia_to_cpp(flags)))
end
imreadmulti(filename::String; flags::Int32 = IMREAD_ANYCOLOR) = imreadmulti(filename, flags)

function findEssentialMat(points1::Mat, points2::Mat, cameraMatrix::Mat, method::Int32, prob::Float64, threshold::Float64, mask::Mat)
	return cpp_to_julia(jlopencv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::Mat, points2::Mat, cameraMatrix::Mat, method::Int32; method::Int32 = RANSAC, prob::Float64 = 0.999, threshold::Float64 = 1.0) = findEssentialMat(points1, points2, cameraMatrix, method, prob, threshold, mask)

function findEssentialMat(points1::UMat, points2::UMat, cameraMatrix::UMat, method::Int32, prob::Float64, threshold::Float64, mask::UMat)
	return cpp_to_julia(jlopencv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::UMat, points2::UMat, cameraMatrix::UMat, method::Int32; method::Int32 = RANSAC, prob::Float64 = 0.999, threshold::Float64 = 1.0) = findEssentialMat(points1, points2, cameraMatrix, method, prob, threshold, mask)

function findEssentialMat(points1::Mat, points2::Mat, focal::Float64, pp::PoInt322d, method::Int32, prob::Float64, threshold::Float64, mask::Mat)
	return cpp_to_julia(jlopencv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::Mat, points2::Mat, focal::Float64; focal::Float64 = 1.0, pp::PoInt322d = Point2d(0, 0), method::Int32 = RANSAC, prob::Float64 = 0.999, threshold::Float64 = 1.0) = findEssentialMat(points1, points2, focal, pp, method, prob, threshold, mask)

function findEssentialMat(points1::UMat, points2::UMat, focal::Float64, pp::PoInt322d, method::Int32, prob::Float64, threshold::Float64, mask::UMat)
	return cpp_to_julia(jlopencv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::UMat, points2::UMat, focal::Float64; focal::Float64 = 1.0, pp::PoInt322d = Point2d(0, 0), method::Int32 = RANSAC, prob::Float64 = 0.999, threshold::Float64 = 1.0) = findEssentialMat(points1, points2, focal, pp, method, prob, threshold, mask)

function arrowedLine(img::Mat, pt1::PoInt32, pt2::PoInt32, color::Scalar, thickness::Int32, line_type::Int32, shift::Int32, tipLength::Float64)
	return cpp_to_julia(jlopencv_cv_arrowedLine(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(line_type),julia_to_cpp(shift),julia_to_cpp(tipLength)))
end
arrowedLine(img::Mat, pt1::PoInt32, pt2::PoInt32, color::Scalar; thickness::Int32 = 1, line_type::Int32 = 8, shift::Int32 = 0, tipLength::Float64 = 0.1) = arrowedLine(img, pt1, pt2, color, thickness, line_type, shift, tipLength)

function arrowedLine(img::UMat, pt1::PoInt32, pt2::PoInt32, color::Scalar, thickness::Int32, line_type::Int32, shift::Int32, tipLength::Float64)
	return cpp_to_julia(jlopencv_cv_arrowedLine(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(line_type),julia_to_cpp(shift),julia_to_cpp(tipLength)))
end
arrowedLine(img::UMat, pt1::PoInt32, pt2::PoInt32, color::Scalar; thickness::Int32 = 1, line_type::Int32 = 8, shift::Int32 = 0, tipLength::Float64 = 0.1) = arrowedLine(img, pt1, pt2, color, thickness, line_type, shift, tipLength)

function Rodrigues(src::Mat, dst::Mat, jacobian::Mat)
	return cpp_to_julia(jlopencv_cv_Rodrigues(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(jacobian)))
end
Rodrigues(src::Mat, dst::Mat, jacobian::Mat; ) = Rodrigues(src, dst, jacobian)

function Rodrigues(src::UMat, dst::UMat, jacobian::UMat)
	return cpp_to_julia(jlopencv_cv_Rodrigues(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(jacobian)))
end
Rodrigues(src::UMat, dst::UMat, jacobian::UMat; ) = Rodrigues(src, dst, jacobian)

function cartToPolar(x::Mat, y::Mat, magnitude::Mat, angle::Mat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cartToPolar(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
cartToPolar(x::Mat, y::Mat, magnitude::Mat, angle::Mat; angleInDegrees::Bool = false) = cartToPolar(x, y, magnitude, angle, angleInDegrees)

function cartToPolar(x::UMat, y::UMat, magnitude::UMat, angle::UMat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cartToPolar(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
cartToPolar(x::UMat, y::UMat, magnitude::UMat, angle::UMat; angleInDegrees::Bool = false) = cartToPolar(x, y, magnitude, angle, angleInDegrees)

function connectedComponentsWithStatsWithAlgorithm(image::Mat, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::Mat, stats::Mat, centroids::Mat)
	return cpp_to_julia(jlopencv_cv_connectedComponentsWithStatsWithAlgorithm(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids)))
end
connectedComponentsWithStatsWithAlgorithm(image::Mat, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::Mat, stats::Mat, centroids::Mat; ) = connectedComponentsWithStatsWithAlgorithm(image, connectivity, ltype, ccltype, labels, stats, centroids)

function connectedComponentsWithStatsWithAlgorithm(image::UMat, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::UMat, stats::UMat, centroids::UMat)
	return cpp_to_julia(jlopencv_cv_connectedComponentsWithStatsWithAlgorithm(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids)))
end
connectedComponentsWithStatsWithAlgorithm(image::UMat, connectivity::Int32, ltype::Int32, ccltype::Int32, labels::UMat, stats::UMat, centroids::UMat; ) = connectedComponentsWithStatsWithAlgorithm(image, connectivity, ltype, ccltype, labels, stats, centroids)

function PCABackProject(data::Mat, mean::Mat, eigenvectors::Mat, result::Mat)
	return cpp_to_julia(jlopencv_cv_PCABackProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCABackProject(data::Mat, mean::Mat, eigenvectors::Mat, result::Mat; ) = PCABackProject(data, mean, eigenvectors, result)

function PCABackProject(data::UMat, mean::UMat, eigenvectors::UMat, result::UMat)
	return cpp_to_julia(jlopencv_cv_PCABackProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCABackProject(data::UMat, mean::UMat, eigenvectors::UMat, result::UMat; ) = PCABackProject(data, mean, eigenvectors, result)

function VideoWriter_fourcc(c1::char, c2::char, c3::char, c4::char)
	return cpp_to_julia(jlopencv_cv_VideoWriter_fourcc(julia_to_cpp(c1),julia_to_cpp(c2),julia_to_cpp(c3),julia_to_cpp(c4)))
end
VideoWriter_fourcc(c1::char, c2::char, c3::char, c4::char; ) = VideoWriter_fourcc(c1, c2, c3, c4)

function findNonZero(src::Mat, idx::Mat)
	return cpp_to_julia(jlopencv_cv_findNonZero(julia_to_cpp(src),julia_to_cpp(idx)))
end
findNonZero(src::Mat, idx::Mat; ) = findNonZero(src, idx)

function findNonZero(src::UMat, idx::UMat)
	return cpp_to_julia(jlopencv_cv_findNonZero(julia_to_cpp(src),julia_to_cpp(idx)))
end
findNonZero(src::UMat, idx::UMat; ) = findNonZero(src, idx)

function initUndistortRectifyMap(cameraMatrix::Mat, distCoeffs::Mat, R::Mat, newCameraMatrix::Mat, size::Size, m1type::Int32, map1::Mat, map2::Mat)
	return cpp_to_julia(jlopencv_cv_initUndistortRectifyMap(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(newCameraMatrix),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
initUndistortRectifyMap(cameraMatrix::Mat, distCoeffs::Mat, R::Mat, newCameraMatrix::Mat, size::Size, m1type::Int32, map1::Mat, map2::Mat; ) = initUndistortRectifyMap(cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1, map2)

function initUndistortRectifyMap(cameraMatrix::UMat, distCoeffs::UMat, R::UMat, newCameraMatrix::UMat, size::Size, m1type::Int32, map1::UMat, map2::UMat)
	return cpp_to_julia(jlopencv_cv_initUndistortRectifyMap(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(newCameraMatrix),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
initUndistortRectifyMap(cameraMatrix::UMat, distCoeffs::UMat, R::UMat, newCameraMatrix::UMat, size::Size, m1type::Int32, map1::UMat, map2::UMat; ) = initUndistortRectifyMap(cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1, map2)

function Scharr(src::Mat, ddepth::Int32, dx::Int32, dy::Int32, dst::Mat, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_Scharr(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Scharr(src::Mat, ddepth::Int32, dx::Int32, dy::Int32, dst::Mat; scale::Float64 = 1, delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = Scharr(src, ddepth, dx, dy, dst, scale, delta, borderType)

function Scharr(src::UMat, ddepth::Int32, dx::Int32, dy::Int32, dst::UMat, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_Scharr(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Scharr(src::UMat, ddepth::Int32, dx::Int32, dy::Int32, dst::UMat; scale::Float64 = 1, delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = Scharr(src, ddepth, dx, dy, dst, scale, delta, borderType)

function getWindowImageRect(winname::String)
	return cpp_to_julia(jlopencv_cv_getWindowImageRect(julia_to_cpp(winname)))
end
getWindowImageRect(winname::String; ) = getWindowImageRect(winname)

function accumulate(src::Mat, dst::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_accumulate(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulate(src::Mat, dst::Mat; mask::Mat = Mat()) = accumulate(src, dst, mask)

function accumulate(src::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_accumulate(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulate(src::UMat, dst::UMat; mask::UMat = UMat()) = accumulate(src, dst, mask)

function fitEllipseAMS(points::Mat)
	return cpp_to_julia(jlopencv_cv_fitEllipseAMS(julia_to_cpp(points)))
end
fitEllipseAMS(points::Mat; ) = fitEllipseAMS(points)

function fitEllipseAMS(points::UMat)
	return cpp_to_julia(jlopencv_cv_fitEllipseAMS(julia_to_cpp(points)))
end
fitEllipseAMS(points::UMat; ) = fitEllipseAMS(points)

function findChessboardCorners(image::Mat, patternSize::Size, corners::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_findChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCorners(image::Mat, patternSize::Size, corners::Mat; flags::Int32 = CALIB_CB_ADAPTIVE_THRESH + CALIB_CB_NORMALIZE_IMAGE) = findChessboardCorners(image, patternSize, corners, flags)

function findChessboardCorners(image::UMat, patternSize::Size, corners::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_findChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCorners(image::UMat, patternSize::Size, corners::UMat; flags::Int32 = CALIB_CB_ADAPTIVE_THRESH + CALIB_CB_NORMALIZE_IMAGE) = findChessboardCorners(image, patternSize, corners, flags)

function rotate(src::Mat, rotateCode::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_rotate(julia_to_cpp(src),julia_to_cpp(rotateCode),julia_to_cpp(dst)))
end
rotate(src::Mat, rotateCode::Int32, dst::Mat; ) = rotate(src, rotateCode, dst)

function rotate(src::UMat, rotateCode::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_rotate(julia_to_cpp(src),julia_to_cpp(rotateCode),julia_to_cpp(dst)))
end
rotate(src::UMat, rotateCode::Int32, dst::UMat; ) = rotate(src, rotateCode, dst)

function bitwise_not(src::Mat, dst::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_bitwise_not(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_not(src::Mat, dst::Mat; mask::Mat = Mat()) = bitwise_not(src, dst, mask)

function bitwise_not(src::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_bitwise_not(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_not(src::UMat, dst::UMat; mask::UMat = UMat()) = bitwise_not(src, dst, mask)

function selectROIs(windowName::String, img::Mat, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_selectROIs(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROIs(windowName::String, img::Mat; showCrosshair::Bool = true, fromCenter::Bool = false) = selectROIs(windowName, img, showCrosshair, fromCenter)

function selectROIs(windowName::String, img::UMat, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_selectROIs(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROIs(windowName::String, img::UMat; showCrosshair::Bool = true, fromCenter::Bool = false) = selectROIs(windowName, img, showCrosshair, fromCenter)

function createCLAHE(clipLimit::Float64, tileGridSize::Size)
	return cpp_to_julia(jlopencv_cv_createCLAHE(julia_to_cpp(clipLimit),julia_to_cpp(tileGridSize)))
end
createCLAHE(; clipLimit::Float64 = 40.0, tileGridSize::Size = Size(8, 8)) = createCLAHE(clipLimit, tileGridSize)

function filter2D(src::Mat, ddepth::Int32, kernel::Mat, dst::Mat, anchor::PoInt32, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_filter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
filter2D(src::Mat, ddepth::Int32, kernel::Mat, dst::Mat; anchor::PoInt32 = Point(-1,-1), delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = filter2D(src, ddepth, kernel, dst, anchor, delta, borderType)

function filter2D(src::UMat, ddepth::Int32, kernel::UMat, dst::UMat, anchor::PoInt32, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_filter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
filter2D(src::UMat, ddepth::Int32, kernel::UMat, dst::UMat; anchor::PoInt32 = Point(-1,-1), delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = filter2D(src, ddepth, kernel, dst, anchor, delta, borderType)

function rectangle(img::Mat, pt1::PoInt32, pt2::PoInt32, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::Mat, pt1::PoInt32, pt2::PoInt32, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = rectangle(img, pt1, pt2, color, thickness, lineType, shift)

function rectangle(img::UMat, pt1::PoInt32, pt2::PoInt32, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::UMat, pt1::PoInt32, pt2::PoInt32, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = rectangle(img, pt1, pt2, color, thickness, lineType, shift)

function rectangle(img::Mat, rec::Rect, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(rec),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::Mat, rec::Rect, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = rectangle(img, rec, color, thickness, lineType, shift)

function rectangle(img::UMat, rec::Rect, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(rec),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::UMat, rec::Rect, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = rectangle(img, rec, color, thickness, lineType, shift)

function watershed(image::Mat, markers::Mat)
	return cpp_to_julia(jlopencv_cv_watershed(julia_to_cpp(image),julia_to_cpp(markers)))
end
watershed(image::Mat, markers::Mat; ) = watershed(image, markers)

function watershed(image::UMat, markers::UMat)
	return cpp_to_julia(jlopencv_cv_watershed(julia_to_cpp(image),julia_to_cpp(markers)))
end
watershed(image::UMat, markers::UMat; ) = watershed(image, markers)

function drawContours(image::Mat, contours::vector{Mat}, contourIdx::Int32, color::Scalar, thickness::Int32, lineType::Int32, hierarchy::Mat, maxLevel::Int32, offset::PoInt32)
	return cpp_to_julia(jlopencv_cv_drawContours(julia_to_cpp(image),julia_to_cpp(contours),julia_to_cpp(contourIdx),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(hierarchy),julia_to_cpp(maxLevel),julia_to_cpp(offset)))
end
drawContours(image::Mat, contours::vector{Mat}, contourIdx::Int32, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, hierarchy::Mat = Mat(), maxLevel::Int32 = INT_MAX, offset::PoInt32 = Point()) = drawContours(image, contours, contourIdx, color, thickness, lineType, hierarchy, maxLevel, offset)

function drawContours(image::UMat, contours::vector{UMat}, contourIdx::Int32, color::Scalar, thickness::Int32, lineType::Int32, hierarchy::UMat, maxLevel::Int32, offset::PoInt32)
	return cpp_to_julia(jlopencv_cv_drawContours(julia_to_cpp(image),julia_to_cpp(contours),julia_to_cpp(contourIdx),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(hierarchy),julia_to_cpp(maxLevel),julia_to_cpp(offset)))
end
drawContours(image::UMat, contours::vector{UMat}, contourIdx::Int32, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, hierarchy::UMat = UMat(), maxLevel::Int32 = INT_MAX, offset::PoInt32 = Point()) = drawContours(image, contours, contourIdx, color, thickness, lineType, hierarchy, maxLevel, offset)

function setWindowProperty(winname::String, prop_id::Int32, prop_value::Float64)
	return cpp_to_julia(jlopencv_cv_setWindowProperty(julia_to_cpp(winname),julia_to_cpp(prop_id),julia_to_cpp(prop_value)))
end
setWindowProperty(winname::String, prop_id::Int32, prop_value::Float64; ) = setWindowProperty(winname, prop_id, prop_value)

function merge(mv::vector{Mat}, dst::Mat)
	return cpp_to_julia(jlopencv_cv_merge(julia_to_cpp(mv),julia_to_cpp(dst)))
end
merge(mv::vector{Mat}, dst::Mat; ) = merge(mv, dst)

function merge(mv::vector{UMat}, dst::UMat)
	return cpp_to_julia(jlopencv_cv_merge(julia_to_cpp(mv),julia_to_cpp(dst)))
end
merge(mv::vector{UMat}, dst::UMat; ) = merge(mv, dst)

function magnitude(x::Mat, y::Mat, magnitude::Mat)
	return cpp_to_julia(jlopencv_cv_magnitude(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude)))
end
magnitude(x::Mat, y::Mat, magnitude::Mat; ) = magnitude(x, y, magnitude)

function magnitude(x::UMat, y::UMat, magnitude::UMat)
	return cpp_to_julia(jlopencv_cv_magnitude(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude)))
end
magnitude(x::UMat, y::UMat, magnitude::UMat; ) = magnitude(x, y, magnitude)

function phase(x::Mat, y::Mat, angle::Mat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_phase(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
phase(x::Mat, y::Mat, angle::Mat; angleInDegrees::Bool = false) = phase(x, y, angle, angleInDegrees)

function phase(x::UMat, y::UMat, angle::UMat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_phase(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
phase(x::UMat, y::UMat, angle::UMat; angleInDegrees::Bool = false) = phase(x, y, angle, angleInDegrees)

function SVBackSubst(w::Mat, u::Mat, vt::Mat, rhs::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_SVBackSubst(julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(rhs),julia_to_cpp(dst)))
end
SVBackSubst(w::Mat, u::Mat, vt::Mat, rhs::Mat, dst::Mat; ) = SVBackSubst(w, u, vt, rhs, dst)

function SVBackSubst(w::UMat, u::UMat, vt::UMat, rhs::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_SVBackSubst(julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(rhs),julia_to_cpp(dst)))
end
SVBackSubst(w::UMat, u::UMat, vt::UMat, rhs::UMat, dst::UMat; ) = SVBackSubst(w, u, vt, rhs, dst)

function sampsonDistance(pt1::Mat, pt2::Mat, F::Mat)
	return cpp_to_julia(jlopencv_cv_sampsonDistance(julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(F)))
end
sampsonDistance(pt1::Mat, pt2::Mat, F::Mat; ) = sampsonDistance(pt1, pt2, F)

function sampsonDistance(pt1::UMat, pt2::UMat, F::UMat)
	return cpp_to_julia(jlopencv_cv_sampsonDistance(julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(F)))
end
sampsonDistance(pt1::UMat, pt2::UMat, F::UMat; ) = sampsonDistance(pt1, pt2, F)

function SVDecomp(src::Mat, w::Mat, u::Mat, vt::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_SVDecomp(julia_to_cpp(src),julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(flags)))
end
SVDecomp(src::Mat, w::Mat, u::Mat, vt::Mat; flags::Int32 = 0) = SVDecomp(src, w, u, vt, flags)

function SVDecomp(src::UMat, w::UMat, u::UMat, vt::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_SVDecomp(julia_to_cpp(src),julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(flags)))
end
SVDecomp(src::UMat, w::UMat, u::UMat, vt::UMat; flags::Int32 = 0) = SVDecomp(src, w, u, vt, flags)

function setTrackbarMax(trackbarname::String, winname::String, maxval::Int32)
	return cpp_to_julia(jlopencv_cv_setTrackbarMax(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(maxval)))
end
setTrackbarMax(trackbarname::String, winname::String, maxval::Int32; ) = setTrackbarMax(trackbarname, winname, maxval)

function HuMoments(m::Moments, hu::Mat)
	return cpp_to_julia(jlopencv_cv_HuMoments(julia_to_cpp(m),julia_to_cpp(hu)))
end
HuMoments(m::Moments, hu::Mat; ) = HuMoments(m, hu)

function HuMoments(m::Moments, hu::UMat)
	return cpp_to_julia(jlopencv_cv_HuMoments(julia_to_cpp(m),julia_to_cpp(hu)))
end
HuMoments(m::Moments, hu::UMat; ) = HuMoments(m, hu)

function mean(src::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_mean(julia_to_cpp(src),julia_to_cpp(mask)))
end
mean(src::Mat; mask::Mat = Mat()) = mean(src, mask)

function mean(src::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_mean(julia_to_cpp(src),julia_to_cpp(mask)))
end
mean(src::UMat; mask::UMat = UMat()) = mean(src, mask)

function cornerEigenValsAndVecs(src::Mat, blockSize::Int32, ksize::Int32, dst::Mat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cornerEigenValsAndVecs(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerEigenValsAndVecs(src::Mat, blockSize::Int32, ksize::Int32, dst::Mat; borderType::Int32 = BORDER_DEFAULT) = cornerEigenValsAndVecs(src, blockSize, ksize, dst, borderType)

function cornerEigenValsAndVecs(src::UMat, blockSize::Int32, ksize::Int32, dst::UMat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cornerEigenValsAndVecs(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerEigenValsAndVecs(src::UMat, blockSize::Int32, ksize::Int32, dst::UMat; borderType::Int32 = BORDER_DEFAULT) = cornerEigenValsAndVecs(src, blockSize, ksize, dst, borderType)

function EMD(signature1::Mat, signature2::Mat, distType::Int32, cost::Mat, lowerBound::Ptr{Float32}, flow::Mat)
	return cpp_to_julia(jlopencv_cv_EMD(julia_to_cpp(signature1),julia_to_cpp(signature2),julia_to_cpp(distType),julia_to_cpp(cost),julia_to_cpp(lowerBound),julia_to_cpp(flow)))
end
EMD(signature1::Mat, signature2::Mat, distType::Int32, cost::Mat; cost::Mat = Mat(), lowerBound::Ptr{Float32} = Ptr<float>()) = EMD(signature1, signature2, distType, cost, lowerBound, flow)

function EMD(signature1::UMat, signature2::UMat, distType::Int32, cost::UMat, lowerBound::Ptr{Float32}, flow::UMat)
	return cpp_to_julia(jlopencv_cv_EMD(julia_to_cpp(signature1),julia_to_cpp(signature2),julia_to_cpp(distType),julia_to_cpp(cost),julia_to_cpp(lowerBound),julia_to_cpp(flow)))
end
EMD(signature1::UMat, signature2::UMat, distType::Int32, cost::UMat; cost::UMat = UMat(), lowerBound::Ptr{Float32} = Ptr<float>()) = EMD(signature1, signature2, distType, cost, lowerBound, flow)

function contourArea(contour::Mat, oriented::Bool)
	return cpp_to_julia(jlopencv_cv_contourArea(julia_to_cpp(contour),julia_to_cpp(oriented)))
end
contourArea(contour::Mat; oriented::Bool = false) = contourArea(contour, oriented)

function contourArea(contour::UMat, oriented::Bool)
	return cpp_to_julia(jlopencv_cv_contourArea(julia_to_cpp(contour),julia_to_cpp(oriented)))
end
contourArea(contour::UMat; oriented::Bool = false) = contourArea(contour, oriented)

function matchTemplate(image::Mat, templ::Mat, method::Int32, result::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_matchTemplate(julia_to_cpp(image),julia_to_cpp(templ),julia_to_cpp(method),julia_to_cpp(result),julia_to_cpp(mask)))
end
matchTemplate(image::Mat, templ::Mat, method::Int32, result::Mat; mask::Mat = Mat()) = matchTemplate(image, templ, method, result, mask)

function matchTemplate(image::UMat, templ::UMat, method::Int32, result::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_matchTemplate(julia_to_cpp(image),julia_to_cpp(templ),julia_to_cpp(method),julia_to_cpp(result),julia_to_cpp(mask)))
end
matchTemplate(image::UMat, templ::UMat, method::Int32, result::UMat; mask::UMat = UMat()) = matchTemplate(image, templ, method, result, mask)

function estimateAffine2D(from::Mat, to::Mat, inliers::Mat, method::Int32, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_estimateAffine2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffine2D(from::Mat, to::Mat, inliers::Mat; method::Int32 = RANSAC, ransacReprojThreshold::Float64 = 3, maxIters::size_t = 2000, confidence::Float64 = 0.99, refineIters::size_t = 10) = estimateAffine2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function estimateAffine2D(from::UMat, to::UMat, inliers::UMat, method::Int32, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_estimateAffine2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffine2D(from::UMat, to::UMat, inliers::UMat; method::Int32 = RANSAC, ransacReprojThreshold::Float64 = 3, maxIters::size_t = 2000, confidence::Float64 = 0.99, refineIters::size_t = 10) = estimateAffine2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function mulSpectrums(a::Mat, b::Mat, flags::Int32, c::Mat, conjB::Bool)
	return cpp_to_julia(jlopencv_cv_mulSpectrums(julia_to_cpp(a),julia_to_cpp(b),julia_to_cpp(flags),julia_to_cpp(c),julia_to_cpp(conjB)))
end
mulSpectrums(a::Mat, b::Mat, flags::Int32, c::Mat; conjB::Bool = false) = mulSpectrums(a, b, flags, c, conjB)

function mulSpectrums(a::UMat, b::UMat, flags::Int32, c::UMat, conjB::Bool)
	return cpp_to_julia(jlopencv_cv_mulSpectrums(julia_to_cpp(a),julia_to_cpp(b),julia_to_cpp(flags),julia_to_cpp(c),julia_to_cpp(conjB)))
end
mulSpectrums(a::UMat, b::UMat, flags::Int32, c::UMat; conjB::Bool = false) = mulSpectrums(a, b, flags, c, conjB)

function idft(src::Mat, dst::Mat, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_idft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
idft(src::Mat, dst::Mat; flags::Int32 = 0, nonzeroRows::Int32 = 0) = idft(src, dst, flags, nonzeroRows)

function idft(src::UMat, dst::UMat, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_idft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
idft(src::UMat, dst::UMat; flags::Int32 = 0, nonzeroRows::Int32 = 0) = idft(src, dst, flags, nonzeroRows)

function mixChannels(src::vector{Mat}, dst::vector{Mat}, fromTo::vector{Int32})
	return cpp_to_julia(jlopencv_cv_mixChannels(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(fromTo)))
end
mixChannels(src::vector{Mat}, dst::vector{Mat}, fromTo::vector{Int32}; ) = mixChannels(src, dst, fromTo)

function mixChannels(src::vector{UMat}, dst::vector{UMat}, fromTo::vector{Int32})
	return cpp_to_julia(jlopencv_cv_mixChannels(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(fromTo)))
end
mixChannels(src::vector{UMat}, dst::vector{UMat}, fromTo::vector{Int32}; ) = mixChannels(src, dst, fromTo)

function adaptiveThreshold(src::Mat, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64, dst::Mat)
	return cpp_to_julia(jlopencv_cv_adaptiveThreshold(julia_to_cpp(src),julia_to_cpp(maxValue),julia_to_cpp(adaptiveMethod),julia_to_cpp(thresholdType),julia_to_cpp(blockSize),julia_to_cpp(C),julia_to_cpp(dst)))
end
adaptiveThreshold(src::Mat, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64, dst::Mat; ) = adaptiveThreshold(src, maxValue, adaptiveMethod, thresholdType, blockSize, C, dst)

function adaptiveThreshold(src::UMat, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64, dst::UMat)
	return cpp_to_julia(jlopencv_cv_adaptiveThreshold(julia_to_cpp(src),julia_to_cpp(maxValue),julia_to_cpp(adaptiveMethod),julia_to_cpp(thresholdType),julia_to_cpp(blockSize),julia_to_cpp(C),julia_to_cpp(dst)))
end
adaptiveThreshold(src::UMat, maxValue::Float64, adaptiveMethod::Int32, thresholdType::Int32, blockSize::Int32, C::Float64, dst::UMat; ) = adaptiveThreshold(src, maxValue, adaptiveMethod, thresholdType, blockSize, C, dst)

function reduce(src::Mat, dim::Int32, rtype::Int32, dst::Mat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_reduce(julia_to_cpp(src),julia_to_cpp(dim),julia_to_cpp(rtype),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
reduce(src::Mat, dim::Int32, rtype::Int32, dst::Mat; dtype::Int32 = -1) = reduce(src, dim, rtype, dst, dtype)

function reduce(src::UMat, dim::Int32, rtype::Int32, dst::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_reduce(julia_to_cpp(src),julia_to_cpp(dim),julia_to_cpp(rtype),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
reduce(src::UMat, dim::Int32, rtype::Int32, dst::UMat; dtype::Int32 = -1) = reduce(src, dim, rtype, dst, dtype)

function minMaxLoc(src::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_minMaxLoc(julia_to_cpp(src),julia_to_cpp(mask)))
end
minMaxLoc(src::Mat; mask::Mat = Mat()) = minMaxLoc(src, mask)

function minMaxLoc(src::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_minMaxLoc(julia_to_cpp(src),julia_to_cpp(mask)))
end
minMaxLoc(src::UMat; mask::UMat = UMat()) = minMaxLoc(src, mask)

function getPerspectiveTransform(src::Mat, dst::Mat, solveMethod::Int32)
	return cpp_to_julia(jlopencv_cv_getPerspectiveTransform(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(solveMethod)))
end
getPerspectiveTransform(src::Mat, dst::Mat; solveMethod::Int32 = DECOMP_LU) = getPerspectiveTransform(src, dst, solveMethod)

function getPerspectiveTransform(src::UMat, dst::UMat, solveMethod::Int32)
	return cpp_to_julia(jlopencv_cv_getPerspectiveTransform(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(solveMethod)))
end
getPerspectiveTransform(src::UMat, dst::UMat; solveMethod::Int32 = DECOMP_LU) = getPerspectiveTransform(src, dst, solveMethod)

function boxFilter(src::Mat, ddepth::Int32, ksize::Size, dst::Mat, anchor::PoInt32, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_boxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
boxFilter(src::Mat, ddepth::Int32, ksize::Size, dst::Mat; anchor::PoInt32 = Point(-1,-1), normalize::Bool = true, borderType::Int32 = BORDER_DEFAULT) = boxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function boxFilter(src::UMat, ddepth::Int32, ksize::Size, dst::UMat, anchor::PoInt32, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_boxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
boxFilter(src::UMat, ddepth::Int32, ksize::Size, dst::UMat; anchor::PoInt32 = Point(-1,-1), normalize::Bool = true, borderType::Int32 = BORDER_DEFAULT) = boxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function RQDecomp3x3(src::Mat, mtxR::Mat, mtxQ::Mat, Qx::Mat, Qy::Mat, Qz::Mat)
	return cpp_to_julia(jlopencv_cv_RQDecomp3x3(julia_to_cpp(src),julia_to_cpp(mtxR),julia_to_cpp(mtxQ),julia_to_cpp(Qx),julia_to_cpp(Qy),julia_to_cpp(Qz)))
end
RQDecomp3x3(src::Mat, mtxR::Mat, mtxQ::Mat, Qx::Mat, Qy::Mat, Qz::Mat; ) = RQDecomp3x3(src, mtxR, mtxQ, Qx, Qy, Qz)

function RQDecomp3x3(src::UMat, mtxR::UMat, mtxQ::UMat, Qx::UMat, Qy::UMat, Qz::UMat)
	return cpp_to_julia(jlopencv_cv_RQDecomp3x3(julia_to_cpp(src),julia_to_cpp(mtxR),julia_to_cpp(mtxQ),julia_to_cpp(Qx),julia_to_cpp(Qy),julia_to_cpp(Qz)))
end
RQDecomp3x3(src::UMat, mtxR::UMat, mtxQ::UMat, Qx::UMat, Qy::UMat, Qz::UMat; ) = RQDecomp3x3(src, mtxR, mtxQ, Qx, Qy, Qz)

function pointPolygonTest(contour::Mat, pt::PoInt322f, measureDist::Bool)
	return cpp_to_julia(jlopencv_cv_pointPolygonTest(julia_to_cpp(contour),julia_to_cpp(pt),julia_to_cpp(measureDist)))
end
pointPolygonTest(contour::Mat, pt::PoInt322f, measureDist::Bool; ) = pointPolygonTest(contour, pt, measureDist)

function pointPolygonTest(contour::UMat, pt::PoInt322f, measureDist::Bool)
	return cpp_to_julia(jlopencv_cv_pointPolygonTest(julia_to_cpp(contour),julia_to_cpp(pt),julia_to_cpp(measureDist)))
end
pointPolygonTest(contour::UMat, pt::PoInt322f, measureDist::Bool; ) = pointPolygonTest(contour, pt, measureDist)

function connectedComponentsWithStats(image::Mat, labels::Mat, stats::Mat, centroids::Mat, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponentsWithStats(image::Mat, labels::Mat, stats::Mat, centroids::Mat; connectivity::Int32 = 8, ltype::Int32 = CV_32S) = connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype)

function connectedComponentsWithStats(image::UMat, labels::UMat, stats::UMat, centroids::UMat, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponentsWithStats(image::UMat, labels::UMat, stats::UMat, centroids::UMat; connectivity::Int32 = 8, ltype::Int32 = CV_32S) = connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype)

function imread(filename::String, flags::Int32)
	return cpp_to_julia(jlopencv_cv_imread(julia_to_cpp(filename),julia_to_cpp(flags)))
end
imread(filename::String; flags::Int32 = IMREAD_COLOR) = imread(filename, flags)

function applyColorMap(src::Mat, colormap::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(colormap),julia_to_cpp(dst)))
end
applyColorMap(src::Mat, colormap::Int32, dst::Mat; ) = applyColorMap(src, colormap, dst)

function applyColorMap(src::UMat, colormap::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(colormap),julia_to_cpp(dst)))
end
applyColorMap(src::UMat, colormap::Int32, dst::UMat; ) = applyColorMap(src, colormap, dst)

function applyColorMap(src::Mat, userColor::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(userColor),julia_to_cpp(dst)))
end
applyColorMap(src::Mat, userColor::Mat, dst::Mat; ) = applyColorMap(src, userColor, dst)

function applyColorMap(src::UMat, userColor::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(userColor),julia_to_cpp(dst)))
end
applyColorMap(src::UMat, userColor::UMat, dst::UMat; ) = applyColorMap(src, userColor, dst)

function decomposeProjectionMatrix(projMatrix::Mat, cameraMatrix::Mat, rotMatrix::Mat, transVect::Mat, rotMatrixX::Mat, rotMatrixY::Mat, rotMatrixZ::Mat, eulerAngles::Mat)
	return cpp_to_julia(jlopencv_cv_decomposeProjectionMatrix(julia_to_cpp(projMatrix),julia_to_cpp(cameraMatrix),julia_to_cpp(rotMatrix),julia_to_cpp(transVect),julia_to_cpp(rotMatrixX),julia_to_cpp(rotMatrixY),julia_to_cpp(rotMatrixZ),julia_to_cpp(eulerAngles)))
end
decomposeProjectionMatrix(projMatrix::Mat, cameraMatrix::Mat, rotMatrix::Mat, transVect::Mat, rotMatrixX::Mat, rotMatrixY::Mat, rotMatrixZ::Mat, eulerAngles::Mat; ) = decomposeProjectionMatrix(projMatrix, cameraMatrix, rotMatrix, transVect, rotMatrixX, rotMatrixY, rotMatrixZ, eulerAngles)

function decomposeProjectionMatrix(projMatrix::UMat, cameraMatrix::UMat, rotMatrix::UMat, transVect::UMat, rotMatrixX::UMat, rotMatrixY::UMat, rotMatrixZ::UMat, eulerAngles::UMat)
	return cpp_to_julia(jlopencv_cv_decomposeProjectionMatrix(julia_to_cpp(projMatrix),julia_to_cpp(cameraMatrix),julia_to_cpp(rotMatrix),julia_to_cpp(transVect),julia_to_cpp(rotMatrixX),julia_to_cpp(rotMatrixY),julia_to_cpp(rotMatrixZ),julia_to_cpp(eulerAngles)))
end
decomposeProjectionMatrix(projMatrix::UMat, cameraMatrix::UMat, rotMatrix::UMat, transVect::UMat, rotMatrixX::UMat, rotMatrixY::UMat, rotMatrixZ::UMat, eulerAngles::UMat; ) = decomposeProjectionMatrix(projMatrix, cameraMatrix, rotMatrix, transVect, rotMatrixX, rotMatrixY, rotMatrixZ, eulerAngles)

function fitEllipse(points::Mat)
	return cpp_to_julia(jlopencv_cv_fitEllipse(julia_to_cpp(points)))
end
fitEllipse(points::Mat; ) = fitEllipse(points)

function fitEllipse(points::UMat)
	return cpp_to_julia(jlopencv_cv_fitEllipse(julia_to_cpp(points)))
end
fitEllipse(points::UMat; ) = fitEllipse(points)

function linearPolar(src::Mat, center::PoInt322f, maxRadius::Float64, flags::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_linearPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
linearPolar(src::Mat, center::PoInt322f, maxRadius::Float64, flags::Int32, dst::Mat; ) = linearPolar(src, center, maxRadius, flags, dst)

function linearPolar(src::UMat, center::PoInt322f, maxRadius::Float64, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_linearPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
linearPolar(src::UMat, center::PoInt322f, maxRadius::Float64, flags::Int32, dst::UMat; ) = linearPolar(src, center, maxRadius, flags, dst)

function minEnclosingTriangle(points::Mat, triangle::Mat)
	return cpp_to_julia(jlopencv_cv_minEnclosingTriangle(julia_to_cpp(points),julia_to_cpp(triangle)))
end
minEnclosingTriangle(points::Mat, triangle::Mat; ) = minEnclosingTriangle(points, triangle)

function minEnclosingTriangle(points::UMat, triangle::UMat)
	return cpp_to_julia(jlopencv_cv_minEnclosingTriangle(julia_to_cpp(points),julia_to_cpp(triangle)))
end
minEnclosingTriangle(points::UMat, triangle::UMat; ) = minEnclosingTriangle(points, triangle)

function pyrUp(src::Mat, dst::Mat, dstsize::Size, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_pyrUp(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrUp(src::Mat, dst::Mat; dstsize::Size = Size(), borderType::Int32 = BORDER_DEFAULT) = pyrUp(src, dst, dstsize, borderType)

function pyrUp(src::UMat, dst::UMat, dstsize::Size, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_pyrUp(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrUp(src::UMat, dst::UMat; dstsize::Size = Size(), borderType::Int32 = BORDER_DEFAULT) = pyrUp(src, dst, dstsize, borderType)

function recoverPose(E::Mat, points1::Mat, points2::Mat, cameraMatrix::Mat, R::Mat, t::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask)))
end
recoverPose(E::Mat, points1::Mat, points2::Mat, cameraMatrix::Mat, R::Mat, t::Mat; mask::Mat = Mat()) = recoverPose(E, points1, points2, cameraMatrix, R, t, mask)

function recoverPose(E::UMat, points1::UMat, points2::UMat, cameraMatrix::UMat, R::UMat, t::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask)))
end
recoverPose(E::UMat, points1::UMat, points2::UMat, cameraMatrix::UMat, R::UMat, t::UMat; mask::UMat = UMat()) = recoverPose(E, points1, points2, cameraMatrix, R, t, mask)

function recoverPose(E::Mat, points1::Mat, points2::Mat, R::Mat, t::Mat, focal::Float64, pp::PoInt322d, mask::Mat)
	return cpp_to_julia(jlopencv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(mask)))
end
recoverPose(E::Mat, points1::Mat, points2::Mat, R::Mat, t::Mat; focal::Float64 = 1.0, pp::PoInt322d = Point2d(0, 0), mask::Mat = Mat()) = recoverPose(E, points1, points2, R, t, focal, pp, mask)

function recoverPose(E::UMat, points1::UMat, points2::UMat, R::UMat, t::UMat, focal::Float64, pp::PoInt322d, mask::UMat)
	return cpp_to_julia(jlopencv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(mask)))
end
recoverPose(E::UMat, points1::UMat, points2::UMat, R::UMat, t::UMat; focal::Float64 = 1.0, pp::PoInt322d = Point2d(0, 0), mask::UMat = UMat()) = recoverPose(E, points1, points2, R, t, focal, pp, mask)

function recoverPose(E::Mat, points1::Mat, points2::Mat, cameraMatrix::Mat, distanceThresh::Float64, R::Mat, t::Mat, mask::Mat, triangulatedPoints::Mat)
	return cpp_to_julia(jlopencv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(distanceThresh),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask),julia_to_cpp(triangulatedPoints)))
end
recoverPose(E::Mat, points1::Mat, points2::Mat, cameraMatrix::Mat, distanceThresh::Float64, R::Mat, t::Mat, mask::Mat; mask::Mat = Mat()) = recoverPose(E, points1, points2, cameraMatrix, distanceThresh, R, t, mask, triangulatedPoints)

function recoverPose(E::UMat, points1::UMat, points2::UMat, cameraMatrix::UMat, distanceThresh::Float64, R::UMat, t::UMat, mask::UMat, triangulatedPoints::UMat)
	return cpp_to_julia(jlopencv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(distanceThresh),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask),julia_to_cpp(triangulatedPoints)))
end
recoverPose(E::UMat, points1::UMat, points2::UMat, cameraMatrix::UMat, distanceThresh::Float64, R::UMat, t::UMat, mask::UMat; mask::UMat = UMat()) = recoverPose(E, points1, points2, cameraMatrix, distanceThresh, R, t, mask, triangulatedPoints)

function getValidDisparityROI(roi1::Rect, roi2::Rect, minDisparity::Int32, numberOfDisparities::Int32, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_getValidDisparityROI(julia_to_cpp(roi1),julia_to_cpp(roi2),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(blockSize)))
end
getValidDisparityROI(roi1::Rect, roi2::Rect, minDisparity::Int32, numberOfDisparities::Int32, blockSize::Int32; ) = getValidDisparityROI(roi1, roi2, minDisparity, numberOfDisparities, blockSize)

function drawFrameAxes(image::Mat, cameraMatrix::Mat, distCoeffs::Mat, rvec::Mat, tvec::Mat, length::Float32, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_drawFrameAxes(julia_to_cpp(image),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(length),julia_to_cpp(thickness)))
end
drawFrameAxes(image::Mat, cameraMatrix::Mat, distCoeffs::Mat, rvec::Mat, tvec::Mat, length::Float32; thickness::Int32 = 3) = drawFrameAxes(image, cameraMatrix, distCoeffs, rvec, tvec, length, thickness)

function drawFrameAxes(image::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, length::Float32, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_drawFrameAxes(julia_to_cpp(image),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(length),julia_to_cpp(thickness)))
end
drawFrameAxes(image::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, length::Float32; thickness::Int32 = 3) = drawFrameAxes(image, cameraMatrix, distCoeffs, rvec, tvec, length, thickness)

function meanStdDev(src::Mat, mean::Mat, stddev::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_meanStdDev(julia_to_cpp(src),julia_to_cpp(mean),julia_to_cpp(stddev),julia_to_cpp(mask)))
end
meanStdDev(src::Mat, mean::Mat, stddev::Mat; mask::Mat = Mat()) = meanStdDev(src, mean, stddev, mask)

function meanStdDev(src::UMat, mean::UMat, stddev::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_meanStdDev(julia_to_cpp(src),julia_to_cpp(mean),julia_to_cpp(stddev),julia_to_cpp(mask)))
end
meanStdDev(src::UMat, mean::UMat, stddev::UMat; mask::UMat = UMat()) = meanStdDev(src, mean, stddev, mask)

function completeSymm(m::Mat, lowerToUpper::Bool)
	return cpp_to_julia(jlopencv_cv_completeSymm(julia_to_cpp(m),julia_to_cpp(lowerToUpper)))
end
completeSymm(m::Mat; lowerToUpper::Bool = false) = completeSymm(m, lowerToUpper)

function completeSymm(m::UMat, lowerToUpper::Bool)
	return cpp_to_julia(jlopencv_cv_completeSymm(julia_to_cpp(m),julia_to_cpp(lowerToUpper)))
end
completeSymm(m::UMat; lowerToUpper::Bool = false) = completeSymm(m, lowerToUpper)

function fitLine(points::Mat, distType::Int32, param::Float64, reps::Float64, aeps::Float64, line::Mat)
	return cpp_to_julia(jlopencv_cv_fitLine(julia_to_cpp(points),julia_to_cpp(distType),julia_to_cpp(param),julia_to_cpp(reps),julia_to_cpp(aeps),julia_to_cpp(line)))
end
fitLine(points::Mat, distType::Int32, param::Float64, reps::Float64, aeps::Float64, line::Mat; ) = fitLine(points, distType, param, reps, aeps, line)

function fitLine(points::UMat, distType::Int32, param::Float64, reps::Float64, aeps::Float64, line::UMat)
	return cpp_to_julia(jlopencv_cv_fitLine(julia_to_cpp(points),julia_to_cpp(distType),julia_to_cpp(param),julia_to_cpp(reps),julia_to_cpp(aeps),julia_to_cpp(line)))
end
fitLine(points::UMat, distType::Int32, param::Float64, reps::Float64, aeps::Float64, line::UMat; ) = fitLine(points, distType, param, reps, aeps, line)

function matMulDeriv(A::Mat, B::Mat, dABdA::Mat, dABdB::Mat)
	return cpp_to_julia(jlopencv_cv_matMulDeriv(julia_to_cpp(A),julia_to_cpp(B),julia_to_cpp(dABdA),julia_to_cpp(dABdB)))
end
matMulDeriv(A::Mat, B::Mat, dABdA::Mat, dABdB::Mat; ) = matMulDeriv(A, B, dABdA, dABdB)

function matMulDeriv(A::UMat, B::UMat, dABdA::UMat, dABdB::UMat)
	return cpp_to_julia(jlopencv_cv_matMulDeriv(julia_to_cpp(A),julia_to_cpp(B),julia_to_cpp(dABdA),julia_to_cpp(dABdB)))
end
matMulDeriv(A::UMat, B::UMat, dABdA::UMat, dABdB::UMat; ) = matMulDeriv(A, B, dABdA, dABdB)

function KeyPoint_overlap(kp1::KeyPoInt32, kp2::KeyPoInt32)
	return cpp_to_julia(jlopencv_cv_KeyPoint_overlap(julia_to_cpp(kp1),julia_to_cpp(kp2)))
end
KeyPoint_overlap(kp1::KeyPoInt32, kp2::KeyPoInt32; ) = KeyPoint_overlap(kp1, kp2)

function cornerSubPix(image::Mat, corners::Mat, winSize::Size, zeroZone::Size, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cornerSubPix(julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(winSize),julia_to_cpp(zeroZone),julia_to_cpp(criteria)))
end
cornerSubPix(image::Mat, corners::Mat, winSize::Size, zeroZone::Size, criteria::TermCriteria; ) = cornerSubPix(image, corners, winSize, zeroZone, criteria)

function cornerSubPix(image::UMat, corners::UMat, winSize::Size, zeroZone::Size, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cornerSubPix(julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(winSize),julia_to_cpp(zeroZone),julia_to_cpp(criteria)))
end
cornerSubPix(image::UMat, corners::UMat, winSize::Size, zeroZone::Size, criteria::TermCriteria; ) = cornerSubPix(image, corners, winSize, zeroZone, criteria)

function copyTo(src::Mat, mask::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_copyTo(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst)))
end
copyTo(src::Mat, mask::Mat, dst::Mat; ) = copyTo(src, mask, dst)

function copyTo(src::UMat, mask::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_copyTo(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst)))
end
copyTo(src::UMat, mask::UMat, dst::UMat; ) = copyTo(src, mask, dst)

function sumElems(src::Mat)
	return cpp_to_julia(jlopencv_cv_sumElems(julia_to_cpp(src)))
end
sumElems(src::Mat; ) = sumElems(src)

function sumElems(src::UMat)
	return cpp_to_julia(jlopencv_cv_sumElems(julia_to_cpp(src)))
end
sumElems(src::UMat; ) = sumElems(src)

function getDefaultNewCameraMatrix(cameraMatrix::Mat, imgsize::Size, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_getDefaultNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(imgsize),julia_to_cpp(centerPrincipalPoint)))
end
getDefaultNewCameraMatrix(cameraMatrix::Mat; imgsize::Size = Size(), centerPrincipalPoint::Bool = false) = getDefaultNewCameraMatrix(cameraMatrix, imgsize, centerPrincipalPoint)

function getDefaultNewCameraMatrix(cameraMatrix::UMat, imgsize::Size, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_getDefaultNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(imgsize),julia_to_cpp(centerPrincipalPoint)))
end
getDefaultNewCameraMatrix(cameraMatrix::UMat; imgsize::Size = Size(), centerPrincipalPoint::Bool = false) = getDefaultNewCameraMatrix(cameraMatrix, imgsize, centerPrincipalPoint)

function blur(src::Mat, ksize::Size, dst::Mat, anchor::PoInt32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_blur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(borderType)))
end
blur(src::Mat, ksize::Size, dst::Mat; anchor::PoInt32 = Point(-1,-1), borderType::Int32 = BORDER_DEFAULT) = blur(src, ksize, dst, anchor, borderType)

function blur(src::UMat, ksize::Size, dst::UMat, anchor::PoInt32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_blur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(borderType)))
end
blur(src::UMat, ksize::Size, dst::UMat; anchor::PoInt32 = Point(-1,-1), borderType::Int32 = BORDER_DEFAULT) = blur(src, ksize, dst, anchor, borderType)

function getGaborKernel(ksize::Size, sigma::Float64, theta::Float64, lambd::Float64, gamma::Float64, psi::Float64, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_getGaborKernel(julia_to_cpp(ksize),julia_to_cpp(sigma),julia_to_cpp(theta),julia_to_cpp(lambd),julia_to_cpp(gamma),julia_to_cpp(psi),julia_to_cpp(ktype)))
end
getGaborKernel(ksize::Size, sigma::Float64, theta::Float64, lambd::Float64, gamma::Float64; psi::Float64 = CV_PI*0.5, ktype::Int32 = CV_64F) = getGaborKernel(ksize, sigma, theta, lambd, gamma, psi, ktype)

function CamShift(probImage::Mat, window::Rect, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_CamShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end
CamShift(probImage::Mat, window::Rect, criteria::TermCriteria; ) = CamShift(probImage, window, criteria)

function CamShift(probImage::UMat, window::Rect, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_CamShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end
CamShift(probImage::UMat, window::Rect, criteria::TermCriteria; ) = CamShift(probImage, window, criteria)

function batchDistance(src1::Mat, src2::Mat, dtype::Int32, dist::Mat, nidx::Mat, normType::Int32, K::Int32, mask::Mat, update::Int32, crosscheck::Bool)
	return cpp_to_julia(jlopencv_cv_batchDistance(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dtype),julia_to_cpp(dist),julia_to_cpp(nidx),julia_to_cpp(normType),julia_to_cpp(K),julia_to_cpp(mask),julia_to_cpp(update),julia_to_cpp(crosscheck)))
end
batchDistance(src1::Mat, src2::Mat, dtype::Int32, dist::Mat, nidx::Mat; normType::Int32 = NORM_L2, K::Int32 = 0, mask::Mat = Mat(), update::Int32 = 0, crosscheck::Bool = false) = batchDistance(src1, src2, dtype, dist, nidx, normType, K, mask, update, crosscheck)

function batchDistance(src1::UMat, src2::UMat, dtype::Int32, dist::UMat, nidx::UMat, normType::Int32, K::Int32, mask::UMat, update::Int32, crosscheck::Bool)
	return cpp_to_julia(jlopencv_cv_batchDistance(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dtype),julia_to_cpp(dist),julia_to_cpp(nidx),julia_to_cpp(normType),julia_to_cpp(K),julia_to_cpp(mask),julia_to_cpp(update),julia_to_cpp(crosscheck)))
end
batchDistance(src1::UMat, src2::UMat, dtype::Int32, dist::UMat, nidx::UMat; normType::Int32 = NORM_L2, K::Int32 = 0, mask::UMat = UMat(), update::Int32 = 0, crosscheck::Bool = false) = batchDistance(src1, src2, dtype, dist, nidx, normType, K, mask, update, crosscheck)

function drawChessboardCorners(image::Mat, patternSize::Size, corners::Mat, patternWasFound::Bool)
	return cpp_to_julia(jlopencv_cv_drawChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(patternWasFound)))
end
drawChessboardCorners(image::Mat, patternSize::Size, corners::Mat, patternWasFound::Bool; ) = drawChessboardCorners(image, patternSize, corners, patternWasFound)

function drawChessboardCorners(image::UMat, patternSize::Size, corners::UMat, patternWasFound::Bool)
	return cpp_to_julia(jlopencv_cv_drawChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(patternWasFound)))
end
drawChessboardCorners(image::UMat, patternSize::Size, corners::UMat, patternWasFound::Bool; ) = drawChessboardCorners(image, patternSize, corners, patternWasFound)

function sortIdx(src::Mat, flags::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_sortIdx(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sortIdx(src::Mat, flags::Int32, dst::Mat; ) = sortIdx(src, flags, dst)

function sortIdx(src::UMat, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_sortIdx(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sortIdx(src::UMat, flags::Int32, dst::UMat; ) = sortIdx(src, flags, dst)

function getAffineTransform(src::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_getAffineTransform(julia_to_cpp(src),julia_to_cpp(dst)))
end
getAffineTransform(src::Mat, dst::Mat; ) = getAffineTransform(src, dst)

function getAffineTransform(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_getAffineTransform(julia_to_cpp(src),julia_to_cpp(dst)))
end
getAffineTransform(src::UMat, dst::UMat; ) = getAffineTransform(src, dst)

function imencode(ext::String, img::Mat, params::vector{Int32})
	return cpp_to_julia(jlopencv_cv_imencode(julia_to_cpp(ext),julia_to_cpp(img),julia_to_cpp(params)))
end
imencode(ext::String, img::Mat; params::vector{Int32} = std::vector<int>()) = imencode(ext, img, params)

function imencode(ext::String, img::UMat, params::vector{Int32})
	return cpp_to_julia(jlopencv_cv_imencode(julia_to_cpp(ext),julia_to_cpp(img),julia_to_cpp(params)))
end
imencode(ext::String, img::UMat; params::vector{Int32} = std::vector<int>()) = imencode(ext, img, params)

function PCACompute(data::Mat, mean::Mat, eigenvectors::Mat, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(maxComponents)))
end
PCACompute(data::Mat, mean::Mat, eigenvectors::Mat; maxComponents::Int32 = 0) = PCACompute(data, mean, eigenvectors, maxComponents)

function PCACompute(data::UMat, mean::UMat, eigenvectors::UMat, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(maxComponents)))
end
PCACompute(data::UMat, mean::UMat, eigenvectors::UMat; maxComponents::Int32 = 0) = PCACompute(data, mean, eigenvectors, maxComponents)

function PCACompute(data::Mat, mean::Mat, retainedVariance::Float64, eigenvectors::Mat)
	return cpp_to_julia(jlopencv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors)))
end
PCACompute(data::Mat, mean::Mat, retainedVariance::Float64, eigenvectors::Mat; ) = PCACompute(data, mean, retainedVariance, eigenvectors)

function PCACompute(data::UMat, mean::UMat, retainedVariance::Float64, eigenvectors::UMat)
	return cpp_to_julia(jlopencv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors)))
end
PCACompute(data::UMat, mean::UMat, retainedVariance::Float64, eigenvectors::UMat; ) = PCACompute(data, mean, retainedVariance, eigenvectors)

function convertPointsFromHomogeneous(src::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_convertPointsFromHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsFromHomogeneous(src::Mat, dst::Mat; ) = convertPointsFromHomogeneous(src, dst)

function convertPointsFromHomogeneous(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_convertPointsFromHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsFromHomogeneous(src::UMat, dst::UMat; ) = convertPointsFromHomogeneous(src, dst)

function logPolar(src::Mat, center::PoInt322f, M::Float64, flags::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_logPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(M),julia_to_cpp(flags),julia_to_cpp(dst)))
end
logPolar(src::Mat, center::PoInt322f, M::Float64, flags::Int32, dst::Mat; ) = logPolar(src, center, M, flags, dst)

function logPolar(src::UMat, center::PoInt322f, M::Float64, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_logPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(M),julia_to_cpp(flags),julia_to_cpp(dst)))
end
logPolar(src::UMat, center::PoInt322f, M::Float64, flags::Int32, dst::UMat; ) = logPolar(src, center, M, flags, dst)

function stereoRectifyUncalibrated(points1::Mat, points2::Mat, F::Mat, imgSize::Size, H1::Mat, H2::Mat, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_stereoRectifyUncalibrated(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(F),julia_to_cpp(imgSize),julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(threshold)))
end
stereoRectifyUncalibrated(points1::Mat, points2::Mat, F::Mat, imgSize::Size, H1::Mat, H2::Mat; threshold::Float64 = 5) = stereoRectifyUncalibrated(points1, points2, F, imgSize, H1, H2, threshold)

function stereoRectifyUncalibrated(points1::UMat, points2::UMat, F::UMat, imgSize::Size, H1::UMat, H2::UMat, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_stereoRectifyUncalibrated(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(F),julia_to_cpp(imgSize),julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(threshold)))
end
stereoRectifyUncalibrated(points1::UMat, points2::UMat, F::UMat, imgSize::Size, H1::UMat, H2::UMat; threshold::Float64 = 5) = stereoRectifyUncalibrated(points1, points2, F, imgSize, H1, H2, threshold)

function cvtColor(src::Mat, code::Int32, dst::Mat, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_cvtColor(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
cvtColor(src::Mat, code::Int32, dst::Mat; dstCn::Int32 = 0) = cvtColor(src, code, dst, dstCn)

function cvtColor(src::UMat, code::Int32, dst::UMat, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_cvtColor(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
cvtColor(src::UMat, code::Int32, dst::UMat; dstCn::Int32 = 0) = cvtColor(src, code, dst, dstCn)

function transpose(src::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_transpose(julia_to_cpp(src),julia_to_cpp(dst)))
end
transpose(src::Mat, dst::Mat; ) = transpose(src, dst)

function transpose(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_transpose(julia_to_cpp(src),julia_to_cpp(dst)))
end
transpose(src::UMat, dst::UMat; ) = transpose(src, dst)

function addText(img::Mat, text::String, org::PoInt32, nameFont::String, pointSize::Int32, color::Scalar, weight::Int32, style::Int32, spacing::Int32)
	return cpp_to_julia(jlopencv_cv_addText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(nameFont),julia_to_cpp(pointSize),julia_to_cpp(color),julia_to_cpp(weight),julia_to_cpp(style),julia_to_cpp(spacing)))
end
addText(img::Mat, text::String, org::PoInt32, nameFont::String; pointSize::Int32 = -1, color::Scalar = Scalar::all(0), weight::Int32 = QT_FONT_NORMAL, style::Int32 = QT_STYLE_NORMAL, spacing::Int32 = 0) = addText(img, text, org, nameFont, pointSize, color, weight, style, spacing)

function addText(img::Mat, text::String, org::PoInt32, nameFont::String, pointSize::Int32, color::Scalar, weight::Int32, style::Int32, spacing::Int32)
	return cpp_to_julia(jlopencv_cv_addText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(nameFont),julia_to_cpp(pointSize),julia_to_cpp(color),julia_to_cpp(weight),julia_to_cpp(style),julia_to_cpp(spacing)))
end
addText(img::Mat, text::String, org::PoInt32, nameFont::String; pointSize::Int32 = -1, color::Scalar = Scalar::all(0), weight::Int32 = QT_FONT_NORMAL, style::Int32 = QT_STYLE_NORMAL, spacing::Int32 = 0) = addText(img, text, org, nameFont, pointSize, color, weight, style, spacing)

function vconcat(src::vector{Mat}, dst::Mat)
	return cpp_to_julia(jlopencv_cv_vconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
vconcat(src::vector{Mat}, dst::Mat; ) = vconcat(src, dst)

function vconcat(src::vector{UMat}, dst::UMat)
	return cpp_to_julia(jlopencv_cv_vconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
vconcat(src::vector{UMat}, dst::UMat; ) = vconcat(src, dst)

function haveImageReader(filename::String)
	return cpp_to_julia(jlopencv_cv_haveImageReader(julia_to_cpp(filename)))
end
haveImageReader(filename::String; ) = haveImageReader(filename)

function dct(src::Mat, dst::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_dct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
dct(src::Mat, dst::Mat; flags::Int32 = 0) = dct(src, dst, flags)

function dct(src::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_dct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
dct(src::UMat, dst::UMat; flags::Int32 = 0) = dct(src, dst, flags)

function subtract(src1::Mat, src2::Mat, dst::Mat, mask::Mat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_subtract(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
subtract(src1::Mat, src2::Mat, dst::Mat; mask::Mat = Mat(), dtype::Int32 = -1) = subtract(src1, src2, dst, mask, dtype)

function subtract(src1::UMat, src2::UMat, dst::UMat, mask::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_subtract(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
subtract(src1::UMat, src2::UMat, dst::UMat; mask::UMat = UMat(), dtype::Int32 = -1) = subtract(src1, src2, dst, mask, dtype)

function pyrMeanShiftFiltering(src::Mat, sp::Float64, sr::Float64, dst::Mat, maxLevel::Int32, termcrit::TermCriteria)
	return cpp_to_julia(jlopencv_cv_pyrMeanShiftFiltering(julia_to_cpp(src),julia_to_cpp(sp),julia_to_cpp(sr),julia_to_cpp(dst),julia_to_cpp(maxLevel),julia_to_cpp(termcrit)))
end
pyrMeanShiftFiltering(src::Mat, sp::Float64, sr::Float64, dst::Mat; maxLevel::Int32 = 1, termcrit::TermCriteria = TermCriteria(TermCriteria::MAX_ITER+TermCriteria::EPS,5,1)) = pyrMeanShiftFiltering(src, sp, sr, dst, maxLevel, termcrit)

function pyrMeanShiftFiltering(src::UMat, sp::Float64, sr::Float64, dst::UMat, maxLevel::Int32, termcrit::TermCriteria)
	return cpp_to_julia(jlopencv_cv_pyrMeanShiftFiltering(julia_to_cpp(src),julia_to_cpp(sp),julia_to_cpp(sr),julia_to_cpp(dst),julia_to_cpp(maxLevel),julia_to_cpp(termcrit)))
end
pyrMeanShiftFiltering(src::UMat, sp::Float64, sr::Float64, dst::UMat; maxLevel::Int32 = 1, termcrit::TermCriteria = TermCriteria(TermCriteria::MAX_ITER+TermCriteria::EPS,5,1)) = pyrMeanShiftFiltering(src, sp, sr, dst, maxLevel, termcrit)

function setTrackbarMin(trackbarname::String, winname::String, minval::Int32)
	return cpp_to_julia(jlopencv_cv_setTrackbarMin(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(minval)))
end
setTrackbarMin(trackbarname::String, winname::String, minval::Int32; ) = setTrackbarMin(trackbarname, winname, minval)

function calcOpticalFlowPyrLK(prevImg::Mat, nextImg::Mat, prevPts::Mat, nextPts::Mat, status::Mat, err::Mat, winSize::Size, maxLevel::Int32, criteria::TermCriteria, flags::Int32, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_calcOpticalFlowPyrLK(julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(criteria),julia_to_cpp(flags),julia_to_cpp(minEigThreshold)))
end
calcOpticalFlowPyrLK(prevImg::Mat, nextImg::Mat, prevPts::Mat, nextPts::Mat, status::Mat, err::Mat; winSize::Size = Size(21,21), maxLevel::Int32 = 3, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 0.01), flags::Int32 = 0, minEigThreshold::Float64 = 1e-4) = calcOpticalFlowPyrLK(prevImg, nextImg, prevPts, nextPts, status, err, winSize, maxLevel, criteria, flags, minEigThreshold)

function calcOpticalFlowPyrLK(prevImg::UMat, nextImg::UMat, prevPts::UMat, nextPts::UMat, status::UMat, err::UMat, winSize::Size, maxLevel::Int32, criteria::TermCriteria, flags::Int32, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_calcOpticalFlowPyrLK(julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(criteria),julia_to_cpp(flags),julia_to_cpp(minEigThreshold)))
end
calcOpticalFlowPyrLK(prevImg::UMat, nextImg::UMat, prevPts::UMat, nextPts::UMat, status::UMat, err::UMat; winSize::Size = Size(21,21), maxLevel::Int32 = 3, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 0.01), flags::Int32 = 0, minEigThreshold::Float64 = 1e-4) = calcOpticalFlowPyrLK(prevImg, nextImg, prevPts, nextPts, status, err, winSize, maxLevel, criteria, flags, minEigThreshold)

function solvePnPRansac(objectPoints::Mat, imagePoints::Mat, cameraMatrix::Mat, distCoeffs::Mat, rvec::Mat, tvec::Mat, useExtrinsicGuess::Bool, iterationsCount::Int32, reprojectionError::Float32, confidence::Float64, inliers::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_solvePnPRansac(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(iterationsCount),julia_to_cpp(reprojectionError),julia_to_cpp(confidence),julia_to_cpp(inliers),julia_to_cpp(flags)))
end
solvePnPRansac(objectPoints::Mat, imagePoints::Mat, cameraMatrix::Mat, distCoeffs::Mat, rvec::Mat, tvec::Mat, useExtrinsicGuess::Bool; useExtrinsicGuess::Bool = false, iterationsCount::Int32 = 100, reprojectionError::Float32 = 8.0, confidence::Float64 = 0.99, flags::Int32 = SOLVEPNP_ITERATIVE) = solvePnPRansac(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, iterationsCount, reprojectionError, confidence, inliers, flags)

function solvePnPRansac(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, useExtrinsicGuess::Bool, iterationsCount::Int32, reprojectionError::Float32, confidence::Float64, inliers::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_solvePnPRansac(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(iterationsCount),julia_to_cpp(reprojectionError),julia_to_cpp(confidence),julia_to_cpp(inliers),julia_to_cpp(flags)))
end
solvePnPRansac(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, useExtrinsicGuess::Bool; useExtrinsicGuess::Bool = false, iterationsCount::Int32 = 100, reprojectionError::Float32 = 8.0, confidence::Float64 = 0.99, flags::Int32 = SOLVEPNP_ITERATIVE) = solvePnPRansac(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, iterationsCount, reprojectionError, confidence, inliers, flags)

function KeyPoint_convert(keypoints::vector{KeyPoInt32}, keypointIndexes::vector{Int32})
	return cpp_to_julia(jlopencv_cv_KeyPoint_convert(julia_to_cpp(keypoints),julia_to_cpp(keypointIndexes)))
end
KeyPoint_convert(keypoints::vector{KeyPoInt32}; keypointIndexes::vector{Int32} = std::vector<int>()) = KeyPoint_convert(keypoints, keypointIndexes)

function KeyPoint_convert(points2f::vector{PoInt322f}, size::Float32, response::Float32, octave::Int32, class_id::Int32)
	return cpp_to_julia(jlopencv_cv_KeyPoint_convert(julia_to_cpp(points2f),julia_to_cpp(size),julia_to_cpp(response),julia_to_cpp(octave),julia_to_cpp(class_id)))
end
KeyPoint_convert(points2f::vector{PoInt322f}; size::Float32 = 1, response::Float32 = 1, octave::Int32 = 0, class_id::Int32 = -1) = KeyPoint_convert(points2f, size, response, octave, class_id)

function CascadeClassifier_convert(oldcascade::String, newcascade::String)
	return cpp_to_julia(jlopencv_cv_CascadeClassifier_convert(julia_to_cpp(oldcascade),julia_to_cpp(newcascade)))
end
CascadeClassifier_convert(oldcascade::String, newcascade::String; ) = CascadeClassifier_convert(oldcascade, newcascade)

function createBackgroundSubtractorMOG2(history::Int32, varThreshold::Float64, detectShadows::Bool)
	return cpp_to_julia(jlopencv_cv_createBackgroundSubtractorMOG2(julia_to_cpp(history),julia_to_cpp(varThreshold),julia_to_cpp(detectShadows)))
end
createBackgroundSubtractorMOG2(; history::Int32 = 500, varThreshold::Float64 = 16, detectShadows::Bool = true) = createBackgroundSubtractorMOG2(history, varThreshold, detectShadows)

function mulTransposed(src::Mat, aTa::Bool, dst::Mat, delta::Mat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_mulTransposed(julia_to_cpp(src),julia_to_cpp(aTa),julia_to_cpp(dst),julia_to_cpp(delta),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
mulTransposed(src::Mat, aTa::Bool, dst::Mat; delta::Mat = Mat(), scale::Float64 = 1, dtype::Int32 = -1) = mulTransposed(src, aTa, dst, delta, scale, dtype)

function mulTransposed(src::UMat, aTa::Bool, dst::UMat, delta::UMat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_mulTransposed(julia_to_cpp(src),julia_to_cpp(aTa),julia_to_cpp(dst),julia_to_cpp(delta),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
mulTransposed(src::UMat, aTa::Bool, dst::UMat; delta::UMat = UMat(), scale::Float64 = 1, dtype::Int32 = -1) = mulTransposed(src, aTa, dst, delta, scale, dtype)

function moveWindow(winname::String, x::Int32, y::Int32)
	return cpp_to_julia(jlopencv_cv_moveWindow(julia_to_cpp(winname),julia_to_cpp(x),julia_to_cpp(y)))
end
moveWindow(winname::String, x::Int32, y::Int32; ) = moveWindow(winname, x, y)

function setRNGSeed(seed::Int32)
	return cpp_to_julia(jlopencv_cv_setRNGSeed(julia_to_cpp(seed)))
end
setRNGSeed(seed::Int32; ) = setRNGSeed(seed)

function warpAffine(src::Mat, M::Mat, dsize::Size, dst::Mat, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_warpAffine(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpAffine(src::Mat, M::Mat, dsize::Size, dst::Mat; flags::Int32 = INTER_LINEAR, borderMode::Int32 = BORDER_CONSTANT, borderValue::Scalar = Scalar()) = warpAffine(src, M, dsize, dst, flags, borderMode, borderValue)

function warpAffine(src::UMat, M::UMat, dsize::Size, dst::UMat, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_warpAffine(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpAffine(src::UMat, M::UMat, dsize::Size, dst::UMat; flags::Int32 = INTER_LINEAR, borderMode::Int32 = BORDER_CONSTANT, borderValue::Scalar = Scalar()) = warpAffine(src, M, dsize, dst, flags, borderMode, borderValue)

function goodFeaturesToTrack(image::Mat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, corners::Mat, mask::Mat, blockSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(corners),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::Mat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, corners::Mat; mask::Mat = Mat(), blockSize::Int32 = 3, useHarrisDetector::Bool = false, k::Float64 = 0.04) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, corners, mask, blockSize, useHarrisDetector, k)

function goodFeaturesToTrack(image::UMat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, corners::UMat, mask::UMat, blockSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(corners),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::UMat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, corners::UMat; mask::UMat = UMat(), blockSize::Int32 = 3, useHarrisDetector::Bool = false, k::Float64 = 0.04) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, corners, mask, blockSize, useHarrisDetector, k)

function goodFeaturesToTrack(image::Mat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::Mat, blockSize::Int32, gradientSize::Int32, corners::Mat, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(corners),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::Mat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::Mat, blockSize::Int32, gradientSize::Int32, corners::Mat; useHarrisDetector::Bool = false, k::Float64 = 0.04) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, mask, blockSize, gradientSize, corners, useHarrisDetector, k)

function goodFeaturesToTrack(image::UMat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::UMat, blockSize::Int32, gradientSize::Int32, corners::UMat, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(corners),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::UMat, maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, mask::UMat, blockSize::Int32, gradientSize::Int32, corners::UMat; useHarrisDetector::Bool = false, k::Float64 = 0.04) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, mask, blockSize, gradientSize, corners, useHarrisDetector, k)

function intersectConvexConvex(_p1::Mat, _p2::Mat, _p12::Mat, handleNested::Bool)
	return cpp_to_julia(jlopencv_cv_intersectConvexConvex(julia_to_cpp(_p1),julia_to_cpp(_p2),julia_to_cpp(_p12),julia_to_cpp(handleNested)))
end
intersectConvexConvex(_p1::Mat, _p2::Mat, _p12::Mat; handleNested::Bool = true) = intersectConvexConvex(_p1, _p2, _p12, handleNested)

function intersectConvexConvex(_p1::UMat, _p2::UMat, _p12::UMat, handleNested::Bool)
	return cpp_to_julia(jlopencv_cv_intersectConvexConvex(julia_to_cpp(_p1),julia_to_cpp(_p2),julia_to_cpp(_p12),julia_to_cpp(handleNested)))
end
intersectConvexConvex(_p1::UMat, _p2::UMat, _p12::UMat; handleNested::Bool = true) = intersectConvexConvex(_p1, _p2, _p12, handleNested)

function sqrBoxFilter(src::Mat, ddepth::Int32, ksize::Size, dst::Mat, anchor::PoInt32, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_sqrBoxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
sqrBoxFilter(src::Mat, ddepth::Int32, ksize::Size, dst::Mat; anchor::PoInt32 = Point(-1, -1), normalize::Bool = true, borderType::Int32 = BORDER_DEFAULT) = sqrBoxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function sqrBoxFilter(src::UMat, ddepth::Int32, ksize::Size, dst::UMat, anchor::PoInt32, normalize::Bool, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_sqrBoxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
sqrBoxFilter(src::UMat, ddepth::Int32, ksize::Size, dst::UMat; anchor::PoInt32 = Point(-1, -1), normalize::Bool = true, borderType::Int32 = BORDER_DEFAULT) = sqrBoxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function patchNaNs(a::Mat, val::Float64)
	return cpp_to_julia(jlopencv_cv_patchNaNs(julia_to_cpp(a),julia_to_cpp(val)))
end
patchNaNs(a::Mat; val::Float64 = 0) = patchNaNs(a, val)

function patchNaNs(a::UMat, val::Float64)
	return cpp_to_julia(jlopencv_cv_patchNaNs(julia_to_cpp(a),julia_to_cpp(val)))
end
patchNaNs(a::UMat; val::Float64 = 0) = patchNaNs(a, val)

function calibrateCameraExtended(objectPoints::vector{Mat}, imagePoints::vector{Mat}, imageSize::Size, cameraMatrix::Mat, distCoeffs::Mat, stdDeviationsIntrinsics::Mat, stdDeviationsExtrinsics::Mat, perViewErrors::Mat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_calibrateCameraExtended(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraExtended(objectPoints::vector{Mat}, imagePoints::vector{Mat}, imageSize::Size, cameraMatrix::Mat, distCoeffs::Mat, stdDeviationsIntrinsics::Mat, stdDeviationsExtrinsics::Mat, perViewErrors::Mat; flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCameraExtended(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, stdDeviationsIntrinsics, stdDeviationsExtrinsics, perViewErrors, flags, criteria)

function calibrateCameraExtended(objectPoints::vector{UMat}, imagePoints::vector{UMat}, imageSize::Size, cameraMatrix::UMat, distCoeffs::UMat, stdDeviationsIntrinsics::UMat, stdDeviationsExtrinsics::UMat, perViewErrors::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_calibrateCameraExtended(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraExtended(objectPoints::vector{UMat}, imagePoints::vector{UMat}, imageSize::Size, cameraMatrix::UMat, distCoeffs::UMat, stdDeviationsIntrinsics::UMat, stdDeviationsExtrinsics::UMat, perViewErrors::UMat; flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCameraExtended(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, stdDeviationsIntrinsics, stdDeviationsExtrinsics, perViewErrors, flags, criteria)

function calibrateCameraROExtended(objectPoints::vector{Mat}, imagePoints::vector{Mat}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::Mat, distCoeffs::Mat, newObjPoints::Mat, stdDeviationsIntrinsics::Mat, stdDeviationsExtrinsics::Mat, stdDeviationsObjPoints::Mat, perViewErrors::Mat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_calibrateCameraROExtended(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(newObjPoints),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(stdDeviationsObjPoints),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraROExtended(objectPoints::vector{Mat}, imagePoints::vector{Mat}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::Mat, distCoeffs::Mat, newObjPoints::Mat, stdDeviationsIntrinsics::Mat, stdDeviationsExtrinsics::Mat, stdDeviationsObjPoints::Mat, perViewErrors::Mat; flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCameraROExtended(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, newObjPoints, stdDeviationsIntrinsics, stdDeviationsExtrinsics, stdDeviationsObjPoints, perViewErrors, flags, criteria)

function calibrateCameraROExtended(objectPoints::vector{UMat}, imagePoints::vector{UMat}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::UMat, distCoeffs::UMat, newObjPoints::UMat, stdDeviationsIntrinsics::UMat, stdDeviationsExtrinsics::UMat, stdDeviationsObjPoints::UMat, perViewErrors::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_calibrateCameraROExtended(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(newObjPoints),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(stdDeviationsObjPoints),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraROExtended(objectPoints::vector{UMat}, imagePoints::vector{UMat}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::UMat, distCoeffs::UMat, newObjPoints::UMat, stdDeviationsIntrinsics::UMat, stdDeviationsExtrinsics::UMat, stdDeviationsObjPoints::UMat, perViewErrors::UMat; flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCameraROExtended(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, newObjPoints, stdDeviationsIntrinsics, stdDeviationsExtrinsics, stdDeviationsObjPoints, perViewErrors, flags, criteria)

function decomposeEssentialMat(E::Mat, R1::Mat, R2::Mat, t::Mat)
	return cpp_to_julia(jlopencv_cv_decomposeEssentialMat(julia_to_cpp(E),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(t)))
end
decomposeEssentialMat(E::Mat, R1::Mat, R2::Mat, t::Mat; ) = decomposeEssentialMat(E, R1, R2, t)

function decomposeEssentialMat(E::UMat, R1::UMat, R2::UMat, t::UMat)
	return cpp_to_julia(jlopencv_cv_decomposeEssentialMat(julia_to_cpp(E),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(t)))
end
decomposeEssentialMat(E::UMat, R1::UMat, R2::UMat, t::UMat; ) = decomposeEssentialMat(E, R1, R2, t)

function minAreaRect(points::Mat)
	return cpp_to_julia(jlopencv_cv_minAreaRect(julia_to_cpp(points)))
end
minAreaRect(points::Mat; ) = minAreaRect(points)

function minAreaRect(points::UMat)
	return cpp_to_julia(jlopencv_cv_minAreaRect(julia_to_cpp(points)))
end
minAreaRect(points::UMat; ) = minAreaRect(points)

function calcOpticalFlowFarneback(prev::Mat, next::Mat, flow::Mat, pyr_scale::Float64, levels::Int32, winsize::Int32, iterations::Int32, poly_n::Int32, poly_sigma::Float64, flags::Int32)
	return cpp_to_julia(jlopencv_cv_calcOpticalFlowFarneback(julia_to_cpp(prev),julia_to_cpp(next),julia_to_cpp(flow),julia_to_cpp(pyr_scale),julia_to_cpp(levels),julia_to_cpp(winsize),julia_to_cpp(iterations),julia_to_cpp(poly_n),julia_to_cpp(poly_sigma),julia_to_cpp(flags)))
end
calcOpticalFlowFarneback(prev::Mat, next::Mat, flow::Mat, pyr_scale::Float64, levels::Int32, winsize::Int32, iterations::Int32, poly_n::Int32, poly_sigma::Float64, flags::Int32; ) = calcOpticalFlowFarneback(prev, next, flow, pyr_scale, levels, winsize, iterations, poly_n, poly_sigma, flags)

function calcOpticalFlowFarneback(prev::UMat, next::UMat, flow::UMat, pyr_scale::Float64, levels::Int32, winsize::Int32, iterations::Int32, poly_n::Int32, poly_sigma::Float64, flags::Int32)
	return cpp_to_julia(jlopencv_cv_calcOpticalFlowFarneback(julia_to_cpp(prev),julia_to_cpp(next),julia_to_cpp(flow),julia_to_cpp(pyr_scale),julia_to_cpp(levels),julia_to_cpp(winsize),julia_to_cpp(iterations),julia_to_cpp(poly_n),julia_to_cpp(poly_sigma),julia_to_cpp(flags)))
end
calcOpticalFlowFarneback(prev::UMat, next::UMat, flow::UMat, pyr_scale::Float64, levels::Int32, winsize::Int32, iterations::Int32, poly_n::Int32, poly_sigma::Float64, flags::Int32; ) = calcOpticalFlowFarneback(prev, next, flow, pyr_scale, levels, winsize, iterations, poly_n, poly_sigma, flags)

function displayOverlay(winname::String, text::String, delayms::Int32)
	return cpp_to_julia(jlopencv_cv_displayOverlay(julia_to_cpp(winname),julia_to_cpp(text),julia_to_cpp(delayms)))
end
displayOverlay(winname::String, text::String; delayms::Int32 = 0) = displayOverlay(winname, text, delayms)

function stereoRectify(cameraMatrix1::Mat, distCoeffs1::Mat, cameraMatrix2::Mat, distCoeffs2::Mat, imageSize::Size, R::Mat, T::Mat, R1::Mat, R2::Mat, P1::Mat, P2::Mat, Q::Mat, flags::Int32, alpha::Float64, newImageSize::Size)
	return cpp_to_julia(jlopencv_cv_stereoRectify(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(flags),julia_to_cpp(alpha),julia_to_cpp(newImageSize)))
end
stereoRectify(cameraMatrix1::Mat, distCoeffs1::Mat, cameraMatrix2::Mat, distCoeffs2::Mat, imageSize::Size, R::Mat, T::Mat, R1::Mat, R2::Mat, P1::Mat, P2::Mat, Q::Mat; flags::Int32 = CALIB_ZERO_DISPARITY, alpha::Float64 = -1, newImageSize::Size = Size()) = stereoRectify(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, R1, R2, P1, P2, Q, flags, alpha, newImageSize)

function stereoRectify(cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat, R1::UMat, R2::UMat, P1::UMat, P2::UMat, Q::UMat, flags::Int32, alpha::Float64, newImageSize::Size)
	return cpp_to_julia(jlopencv_cv_stereoRectify(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(flags),julia_to_cpp(alpha),julia_to_cpp(newImageSize)))
end
stereoRectify(cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat, R1::UMat, R2::UMat, P1::UMat, P2::UMat, Q::UMat; flags::Int32 = CALIB_ZERO_DISPARITY, alpha::Float64 = -1, newImageSize::Size = Size()) = stereoRectify(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, R1, R2, P1, P2, Q, flags, alpha, newImageSize)

function gemm(src1::Mat, src2::Mat, alpha::Float64, src3::Mat, beta::Float64, dst::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_gemm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(alpha),julia_to_cpp(src3),julia_to_cpp(beta),julia_to_cpp(dst),julia_to_cpp(flags)))
end
gemm(src1::Mat, src2::Mat, alpha::Float64, src3::Mat, beta::Float64, dst::Mat; flags::Int32 = 0) = gemm(src1, src2, alpha, src3, beta, dst, flags)

function gemm(src1::UMat, src2::UMat, alpha::Float64, src3::UMat, beta::Float64, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_gemm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(alpha),julia_to_cpp(src3),julia_to_cpp(beta),julia_to_cpp(dst),julia_to_cpp(flags)))
end
gemm(src1::UMat, src2::UMat, alpha::Float64, src3::UMat, beta::Float64, dst::UMat; flags::Int32 = 0) = gemm(src1, src2, alpha, src3, beta, dst, flags)

function StereoBM_create(numDisparities::Int32, blockSize::Int32)
	return cpp_to_julia(jlopencv_cv_StereoBM_create(julia_to_cpp(numDisparities),julia_to_cpp(blockSize)))
end
StereoBM_create(; numDisparities::Int32 = 0, blockSize::Int32 = 21) = StereoBM_create(numDisparities, blockSize)

function StereoSGBM_create(minDisparity::Int32, numDisparities::Int32, blockSize::Int32, P1::Int32, P2::Int32, disp12MaxDiff::Int32, preFilterCap::Int32, uniquenessRatio::Int32, speckleWindowSize::Int32, speckleRange::Int32, mode::Int32)
	return cpp_to_julia(jlopencv_cv_StereoSGBM_create(julia_to_cpp(minDisparity),julia_to_cpp(numDisparities),julia_to_cpp(blockSize),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(disp12MaxDiff),julia_to_cpp(preFilterCap),julia_to_cpp(uniquenessRatio),julia_to_cpp(speckleWindowSize),julia_to_cpp(speckleRange),julia_to_cpp(mode)))
end
StereoSGBM_create(; minDisparity::Int32 = 0, numDisparities::Int32 = 16, blockSize::Int32 = 3, P1::Int32 = 0, P2::Int32 = 0, disp12MaxDiff::Int32 = 0, preFilterCap::Int32 = 0, uniquenessRatio::Int32 = 0, speckleWindowSize::Int32 = 0, speckleRange::Int32 = 0, mode::Int32 = StereoSGBM::MODE_SGBM) = StereoSGBM_create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio, speckleWindowSize, speckleRange, mode)

function BRISK_create(thresh::Int32, octaves::Int32, patternScale::Float32)
	return cpp_to_julia(jlopencv_cv_BRISK_create(julia_to_cpp(thresh),julia_to_cpp(octaves),julia_to_cpp(patternScale)))
end
BRISK_create(; thresh::Int32 = 30, octaves::Int32 = 3, patternScale::Float32 = 1.0f) = BRISK_create(thresh, octaves, patternScale)

function BRISK_create(radiusList::vector{Float32}, numberList::vector{Int32}, dMax::Float32, dMin::Float32, indexChange::vector{Int32})
	return cpp_to_julia(jlopencv_cv_BRISK_create(julia_to_cpp(radiusList),julia_to_cpp(numberList),julia_to_cpp(dMax),julia_to_cpp(dMin),julia_to_cpp(indexChange)))
end
BRISK_create(radiusList::vector{Float32}, numberList::vector{Int32}; dMax::Float32 = 5.85f, dMin::Float32 = 8.2f, indexChange::vector{Int32} = std::vector<int>()) = BRISK_create(radiusList, numberList, dMax, dMin, indexChange)

function BRISK_create(thresh::Int32, octaves::Int32, radiusList::vector{Float32}, numberList::vector{Int32}, dMax::Float32, dMin::Float32, indexChange::vector{Int32})
	return cpp_to_julia(jlopencv_cv_BRISK_create(julia_to_cpp(thresh),julia_to_cpp(octaves),julia_to_cpp(radiusList),julia_to_cpp(numberList),julia_to_cpp(dMax),julia_to_cpp(dMin),julia_to_cpp(indexChange)))
end
BRISK_create(thresh::Int32, octaves::Int32, radiusList::vector{Float32}, numberList::vector{Int32}; dMax::Float32 = 5.85f, dMin::Float32 = 8.2f, indexChange::vector{Int32} = std::vector<int>()) = BRISK_create(thresh, octaves, radiusList, numberList, dMax, dMin, indexChange)

function ORB_create(nfeatures::Int32, scaleFactor::Float32, nlevels::Int32, edgeThreshold::Int32, firstLevel::Int32, WTA_K::Int32, scoreType::ORB_ScoreType, patchSize::Int32, fastThreshold::Int32)
	return cpp_to_julia(jlopencv_cv_ORB_create(julia_to_cpp(nfeatures),julia_to_cpp(scaleFactor),julia_to_cpp(nlevels),julia_to_cpp(edgeThreshold),julia_to_cpp(firstLevel),julia_to_cpp(WTA_K),julia_to_cpp(scoreType),julia_to_cpp(patchSize),julia_to_cpp(fastThreshold)))
end
ORB_create(; nfeatures::Int32 = 500, scaleFactor::Float32 = 1.2f, nlevels::Int32 = 8, edgeThreshold::Int32 = 31, firstLevel::Int32 = 0, WTA_K::Int32 = 2, scoreType::ORB_ScoreType = ORB::HARRIS_SCORE, patchSize::Int32 = 31, fastThreshold::Int32 = 20) = ORB_create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, scoreType, patchSize, fastThreshold)

function MSER_create(_delta::Int32, _min_area::Int32, _max_area::Int32, _max_variation::Float64, _min_diversity::Float64, _max_evolution::Int32, _area_threshold::Float64, _min_margin::Float64, _edge_blur_size::Int32)
	return cpp_to_julia(jlopencv_cv_MSER_create(julia_to_cpp(_delta),julia_to_cpp(_min_area),julia_to_cpp(_max_area),julia_to_cpp(_max_variation),julia_to_cpp(_min_diversity),julia_to_cpp(_max_evolution),julia_to_cpp(_area_threshold),julia_to_cpp(_min_margin),julia_to_cpp(_edge_blur_size)))
end
MSER_create(; _delta::Int32 = 5, _min_area::Int32 = 60, _max_area::Int32 = 14400, _max_variation::Float64 = 0.25, _min_diversity::Float64 = .2, _max_evolution::Int32 = 200, _area_threshold::Float64 = 1.01, _min_margin::Float64 = 0.003, _edge_blur_size::Int32 = 5) = MSER_create(_delta, _min_area, _max_area, _max_variation, _min_diversity, _max_evolution, _area_threshold, _min_margin, _edge_blur_size)

function FastFeatureDetector_create(threshold::Int32, nonmaxSuppression::Bool, type::FastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_FastFeatureDetector_create(julia_to_cpp(threshold),julia_to_cpp(nonmaxSuppression),julia_to_cpp(type)))
end
FastFeatureDetector_create(; threshold::Int32 = 10, nonmaxSuppression::Bool = true, type::FastFeatureDetector_DetectorType = FastFeatureDetector::TYPE_9_16) = FastFeatureDetector_create(threshold, nonmaxSuppression, type)

function AgastFeatureDetector_create(threshold::Int32, nonmaxSuppression::Bool, type::AgastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_AgastFeatureDetector_create(julia_to_cpp(threshold),julia_to_cpp(nonmaxSuppression),julia_to_cpp(type)))
end
AgastFeatureDetector_create(; threshold::Int32 = 10, nonmaxSuppression::Bool = true, type::AgastFeatureDetector_DetectorType = AgastFeatureDetector::OAST_9_16) = AgastFeatureDetector_create(threshold, nonmaxSuppression, type)

function GFTTDetector_create(maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, blockSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_create(julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
GFTTDetector_create(; maxCorners::Int32 = 1000, qualityLevel::Float64 = 0.01, minDistance::Float64 = 1, blockSize::Int32 = 3, useHarrisDetector::Bool = false, k::Float64 = 0.04) = GFTTDetector_create(maxCorners, qualityLevel, minDistance, blockSize, useHarrisDetector, k)

function GFTTDetector_create(maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, blockSize::Int32, gradiantSize::Int32, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_GFTTDetector_create(julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(blockSize),julia_to_cpp(gradiantSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
GFTTDetector_create(maxCorners::Int32, qualityLevel::Float64, minDistance::Float64, blockSize::Int32, gradiantSize::Int32; useHarrisDetector::Bool = false, k::Float64 = 0.04) = GFTTDetector_create(maxCorners, qualityLevel, minDistance, blockSize, gradiantSize, useHarrisDetector, k)

function SimpleBlobDetector_create(parameters::SimpleBlobDetector_Params)
	return cpp_to_julia(jlopencv_cv_SimpleBlobDetector_create(julia_to_cpp(parameters)))
end
SimpleBlobDetector_create(; parameters::SimpleBlobDetector_Params = SimpleBlobDetector::Params()) = SimpleBlobDetector_create(parameters)

function KAZE_create(extended::Bool, upright::Bool, threshold::Float32, nOctaves::Int32, nOctaveLayers::Int32, diffusivity::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_KAZE_create(julia_to_cpp(extended),julia_to_cpp(upright),julia_to_cpp(threshold),julia_to_cpp(nOctaves),julia_to_cpp(nOctaveLayers),julia_to_cpp(diffusivity)))
end
KAZE_create(; extended::Bool = false, upright::Bool = false, threshold::Float32 = 0.001f, nOctaves::Int32 = 4, nOctaveLayers::Int32 = 4, diffusivity::KAZE_DiffusivityType = KAZE::DIFF_PM_G2) = KAZE_create(extended, upright, threshold, nOctaves, nOctaveLayers, diffusivity)

function AKAZE_create(descriptor_type::AKAZE_DescriptorType, descriptor_size::Int32, descriptor_channels::Int32, threshold::Float32, nOctaves::Int32, nOctaveLayers::Int32, diffusivity::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_AKAZE_create(julia_to_cpp(descriptor_type),julia_to_cpp(descriptor_size),julia_to_cpp(descriptor_channels),julia_to_cpp(threshold),julia_to_cpp(nOctaves),julia_to_cpp(nOctaveLayers),julia_to_cpp(diffusivity)))
end
AKAZE_create(; descriptor_type::AKAZE_DescriptorType = AKAZE::DESCRIPTOR_MLDB, descriptor_size::Int32 = 0, descriptor_channels::Int32 = 3, threshold::Float32 = 0.001f, nOctaves::Int32 = 4, nOctaveLayers::Int32 = 4, diffusivity::KAZE_DiffusivityType = KAZE::DIFF_PM_G2) = AKAZE_create(descriptor_type, descriptor_size, descriptor_channels, threshold, nOctaves, nOctaveLayers, diffusivity)

function DescriptorMatcher_create(descriptorMatcherType::String)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_create(julia_to_cpp(descriptorMatcherType)))
end
DescriptorMatcher_create(descriptorMatcherType::String; ) = DescriptorMatcher_create(descriptorMatcherType)

function DescriptorMatcher_create(matcherType::DescriptorMatcher_MatcherType)
	return cpp_to_julia(jlopencv_cv_DescriptorMatcher_create(julia_to_cpp(matcherType)))
end
DescriptorMatcher_create(matcherType::DescriptorMatcher_MatcherType; ) = DescriptorMatcher_create(matcherType)

function BFMatcher_create(normType::Int32, crossCheck::Bool)
	return cpp_to_julia(jlopencv_cv_BFMatcher_create(julia_to_cpp(normType),julia_to_cpp(crossCheck)))
end
BFMatcher_create(; normType::Int32 = NORM_L2, crossCheck::Bool = false) = BFMatcher_create(normType, crossCheck)

function FlannBasedMatcher_create()
	return cpp_to_julia(jlopencv_cv_FlannBasedMatcher_create())
end
FlannBasedMatcher_create(; ) = FlannBasedMatcher_create()

function FarnebackOpticalFlow_create(numLevels::Int32, pyrScale::Float64, fastPyramids::Bool, winSize::Int32, numIters::Int32, polyN::Int32, polySigma::Float64, flags::Int32)
	return cpp_to_julia(jlopencv_cv_FarnebackOpticalFlow_create(julia_to_cpp(numLevels),julia_to_cpp(pyrScale),julia_to_cpp(fastPyramids),julia_to_cpp(winSize),julia_to_cpp(numIters),julia_to_cpp(polyN),julia_to_cpp(polySigma),julia_to_cpp(flags)))
end
FarnebackOpticalFlow_create(; numLevels::Int32 = 5, pyrScale::Float64 = 0.5, fastPyramids::Bool = false, winSize::Int32 = 13, numIters::Int32 = 10, polyN::Int32 = 5, polySigma::Float64 = 1.1, flags::Int32 = 0) = FarnebackOpticalFlow_create(numLevels, pyrScale, fastPyramids, winSize, numIters, polyN, polySigma, flags)

function VariationalRefinement_create()
	return cpp_to_julia(jlopencv_cv_VariationalRefinement_create())
end
VariationalRefinement_create(; ) = VariationalRefinement_create()

function DISOpticalFlow_create(preset::Int32)
	return cpp_to_julia(jlopencv_cv_DISOpticalFlow_create(julia_to_cpp(preset)))
end
DISOpticalFlow_create(; preset::Int32 = DISOpticalFlow::PRESET_FAST) = DISOpticalFlow_create(preset)

function SparsePyrLKOpticalFlow_create(winSize::Size, maxLevel::Int32, crit::TermCriteria, flags::Int32, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_SparsePyrLKOpticalFlow_create(julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(crit),julia_to_cpp(flags),julia_to_cpp(minEigThreshold)))
end
SparsePyrLKOpticalFlow_create(; winSize::Size = Size(21, 21), maxLevel::Int32 = 3, crit::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 0.01), flags::Int32 = 0, minEigThreshold::Float64 = 1e-4) = SparsePyrLKOpticalFlow_create(winSize, maxLevel, crit, flags, minEigThreshold)

function undistortPoints(src::Mat, cameraMatrix::Mat, distCoeffs::Mat, dst::Mat, R::Mat, P::Mat)
	return cpp_to_julia(jlopencv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(R),julia_to_cpp(P)))
end
undistortPoints(src::Mat, cameraMatrix::Mat, distCoeffs::Mat, dst::Mat; R::Mat = Mat(), P::Mat = Mat()) = undistortPoints(src, cameraMatrix, distCoeffs, dst, R, P)

function undistortPoints(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, dst::UMat, R::UMat, P::UMat)
	return cpp_to_julia(jlopencv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(R),julia_to_cpp(P)))
end
undistortPoints(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, dst::UMat; R::UMat = UMat(), P::UMat = UMat()) = undistortPoints(src, cameraMatrix, distCoeffs, dst, R, P)

function drawMatchesKnn(img1::Mat, keypoints1::vector{KeyPoInt32}, img2::Mat, keypoints2::vector{KeyPoInt32}, matches1to2::vector{vector{DMatch}}, outImg::Mat, matchColor::Scalar, singlePointColor::Scalar, matchesMask::vector{vector{char}}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_drawMatchesKnn(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatchesKnn(img1::Mat, keypoints1::vector{KeyPoInt32}, img2::Mat, keypoints2::vector{KeyPoInt32}, matches1to2::vector{vector{DMatch}}, outImg::Mat; matchColor::Scalar = Scalar::all(-1), singlePointColor::Scalar = Scalar::all(-1), matchesMask::vector{vector{char}} = std::vector<std::vector<char> >(), flags::DrawMatchesFlags = DrawMatchesFlags::DEFAULT) = drawMatchesKnn(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function drawMatchesKnn(img1::UMat, keypoints1::vector{KeyPoInt32}, img2::UMat, keypoints2::vector{KeyPoInt32}, matches1to2::vector{vector{DMatch}}, outImg::UMat, matchColor::Scalar, singlePointColor::Scalar, matchesMask::vector{vector{char}}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_drawMatchesKnn(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatchesKnn(img1::UMat, keypoints1::vector{KeyPoInt32}, img2::UMat, keypoints2::vector{KeyPoInt32}, matches1to2::vector{vector{DMatch}}, outImg::UMat; matchColor::Scalar = Scalar::all(-1), singlePointColor::Scalar = Scalar::all(-1), matchesMask::vector{vector{char}} = std::vector<std::vector<char> >(), flags::DrawMatchesFlags = DrawMatchesFlags::DEFAULT) = drawMatchesKnn(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function destroyAllWindows()
	return cpp_to_julia(jlopencv_cv_destroyAllWindows())
end
destroyAllWindows(; ) = destroyAllWindows()

function LUT(src::Mat, lut::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_LUT(julia_to_cpp(src),julia_to_cpp(lut),julia_to_cpp(dst)))
end
LUT(src::Mat, lut::Mat, dst::Mat; ) = LUT(src, lut, dst)

function LUT(src::UMat, lut::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_LUT(julia_to_cpp(src),julia_to_cpp(lut),julia_to_cpp(dst)))
end
LUT(src::UMat, lut::UMat, dst::UMat; ) = LUT(src, lut, dst)

function divide(src1::Mat, src2::Mat, dst::Mat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_divide(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
divide(src1::Mat, src2::Mat, dst::Mat; scale::Float64 = 1, dtype::Int32 = -1) = divide(src1, src2, dst, scale, dtype)

function divide(src1::UMat, src2::UMat, dst::UMat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_divide(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
divide(src1::UMat, src2::UMat, dst::UMat; scale::Float64 = 1, dtype::Int32 = -1) = divide(src1, src2, dst, scale, dtype)

function divide(scale::Float64, src2::Mat, dst::Mat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_divide(julia_to_cpp(scale),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
divide(scale::Float64, src2::Mat, dst::Mat; dtype::Int32 = -1) = divide(scale, src2, dst, dtype)

function divide(scale::Float64, src2::UMat, dst::UMat, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_divide(julia_to_cpp(scale),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
divide(scale::Float64, src2::UMat, dst::UMat; dtype::Int32 = -1) = divide(scale, src2, dst, dtype)

function calcBackProject(images::vector{Mat}, channels::vector{Int32}, hist::Mat, ranges::vector{Float32}, scale::Float64, dst::Mat)
	return cpp_to_julia(jlopencv_cv_calcBackProject(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(hist),julia_to_cpp(ranges),julia_to_cpp(scale),julia_to_cpp(dst)))
end
calcBackProject(images::vector{Mat}, channels::vector{Int32}, hist::Mat, ranges::vector{Float32}, scale::Float64, dst::Mat; ) = calcBackProject(images, channels, hist, ranges, scale, dst)

function calcBackProject(images::vector{UMat}, channels::vector{Int32}, hist::UMat, ranges::vector{Float32}, scale::Float64, dst::UMat)
	return cpp_to_julia(jlopencv_cv_calcBackProject(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(hist),julia_to_cpp(ranges),julia_to_cpp(scale),julia_to_cpp(dst)))
end
calcBackProject(images::vector{UMat}, channels::vector{Int32}, hist::UMat, ranges::vector{Float32}, scale::Float64, dst::UMat; ) = calcBackProject(images, channels, hist, ranges, scale, dst)

function pow(src::Mat, power::Float64, dst::Mat)
	return cpp_to_julia(jlopencv_cv_pow(julia_to_cpp(src),julia_to_cpp(power),julia_to_cpp(dst)))
end
pow(src::Mat, power::Float64, dst::Mat; ) = pow(src, power, dst)

function pow(src::UMat, power::Float64, dst::UMat)
	return cpp_to_julia(jlopencv_cv_pow(julia_to_cpp(src),julia_to_cpp(power),julia_to_cpp(dst)))
end
pow(src::UMat, power::Float64, dst::UMat; ) = pow(src, power, dst)

function absdiff(src1::Mat, src2::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_absdiff(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
absdiff(src1::Mat, src2::Mat, dst::Mat; ) = absdiff(src1, src2, dst)

function absdiff(src1::UMat, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_absdiff(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
absdiff(src1::UMat, src2::UMat, dst::UMat; ) = absdiff(src1, src2, dst)

function warpPerspective(src::Mat, M::Mat, dsize::Size, dst::Mat, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_warpPerspective(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpPerspective(src::Mat, M::Mat, dsize::Size, dst::Mat; flags::Int32 = INTER_LINEAR, borderMode::Int32 = BORDER_CONSTANT, borderValue::Scalar = Scalar()) = warpPerspective(src, M, dsize, dst, flags, borderMode, borderValue)

function warpPerspective(src::UMat, M::UMat, dsize::Size, dst::UMat, flags::Int32, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_warpPerspective(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpPerspective(src::UMat, M::UMat, dsize::Size, dst::UMat; flags::Int32 = INTER_LINEAR, borderMode::Int32 = BORDER_CONSTANT, borderValue::Scalar = Scalar()) = warpPerspective(src, M, dsize, dst, flags, borderMode, borderValue)

function integral(src::Mat, sum::Mat, sdepth::Int32)
	return cpp_to_julia(jlopencv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sdepth)))
end
integral(src::Mat, sum::Mat; sdepth::Int32 = -1) = integral(src, sum, sdepth)

function integral(src::UMat, sum::UMat, sdepth::Int32)
	return cpp_to_julia(jlopencv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sdepth)))
end
integral(src::UMat, sum::UMat; sdepth::Int32 = -1) = integral(src, sum, sdepth)

function kmeans(data::Mat, K::Int32, bestLabels::Mat, criteria::TermCriteria, attempts::Int32, flags::Int32, centers::Mat)
	return cpp_to_julia(jlopencv_cv_kmeans(julia_to_cpp(data),julia_to_cpp(K),julia_to_cpp(bestLabels),julia_to_cpp(criteria),julia_to_cpp(attempts),julia_to_cpp(flags),julia_to_cpp(centers)))
end
kmeans(data::Mat, K::Int32, bestLabels::Mat, criteria::TermCriteria, attempts::Int32, flags::Int32, centers::Mat; ) = kmeans(data, K, bestLabels, criteria, attempts, flags, centers)

function kmeans(data::UMat, K::Int32, bestLabels::UMat, criteria::TermCriteria, attempts::Int32, flags::Int32, centers::UMat)
	return cpp_to_julia(jlopencv_cv_kmeans(julia_to_cpp(data),julia_to_cpp(K),julia_to_cpp(bestLabels),julia_to_cpp(criteria),julia_to_cpp(attempts),julia_to_cpp(flags),julia_to_cpp(centers)))
end
kmeans(data::UMat, K::Int32, bestLabels::UMat, criteria::TermCriteria, attempts::Int32, flags::Int32, centers::UMat; ) = kmeans(data, K, bestLabels, criteria, attempts, flags, centers)

function polarToCart(magnitude::Mat, angle::Mat, x::Mat, y::Mat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_polarToCart(julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angleInDegrees)))
end
polarToCart(magnitude::Mat, angle::Mat, x::Mat, y::Mat; angleInDegrees::Bool = false) = polarToCart(magnitude, angle, x, y, angleInDegrees)

function polarToCart(magnitude::UMat, angle::UMat, x::UMat, y::UMat, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_polarToCart(julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angleInDegrees)))
end
polarToCart(magnitude::UMat, angle::UMat, x::UMat, y::UMat; angleInDegrees::Bool = false) = polarToCart(magnitude, angle, x, y, angleInDegrees)

function solvePnP(objectPoints::Mat, imagePoints::Mat, cameraMatrix::Mat, distCoeffs::Mat, rvec::Mat, tvec::Mat, useExtrinsicGuess::Bool, flags::Int32)
	return cpp_to_julia(jlopencv_cv_solvePnP(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags)))
end
solvePnP(objectPoints::Mat, imagePoints::Mat, cameraMatrix::Mat, distCoeffs::Mat, rvec::Mat, tvec::Mat; useExtrinsicGuess::Bool = false, flags::Int32 = SOLVEPNP_ITERATIVE) = solvePnP(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, flags)

function solvePnP(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, useExtrinsicGuess::Bool, flags::Int32)
	return cpp_to_julia(jlopencv_cv_solvePnP(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags)))
end
solvePnP(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat; useExtrinsicGuess::Bool = false, flags::Int32 = SOLVEPNP_ITERATIVE) = solvePnP(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, flags)

function bitwise_or(src1::Mat, src2::Mat, dst::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_bitwise_or(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_or(src1::Mat, src2::Mat, dst::Mat; mask::Mat = Mat()) = bitwise_or(src1, src2, dst, mask)

function bitwise_or(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_bitwise_or(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_or(src1::UMat, src2::UMat, dst::UMat; mask::UMat = UMat()) = bitwise_or(src1, src2, dst, mask)

function selectROI(windowName::String, img::Mat, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_selectROI(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(windowName::String, img::Mat; showCrosshair::Bool = true, fromCenter::Bool = false) = selectROI(windowName, img, showCrosshair, fromCenter)

function selectROI(windowName::String, img::UMat, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_selectROI(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(windowName::String, img::UMat; showCrosshair::Bool = true, fromCenter::Bool = false) = selectROI(windowName, img, showCrosshair, fromCenter)

function selectROI(img::Mat, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_selectROI(julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(img::Mat; showCrosshair::Bool = true, fromCenter::Bool = false) = selectROI(img, showCrosshair, fromCenter)

function selectROI(img::UMat, showCrosshair::Bool, fromCenter::Bool)
	return cpp_to_julia(jlopencv_cv_selectROI(julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter)))
end
selectROI(img::UMat; showCrosshair::Bool = true, fromCenter::Bool = false) = selectROI(img, showCrosshair, fromCenter)

function bitwise_and(src1::Mat, src2::Mat, dst::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_bitwise_and(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_and(src1::Mat, src2::Mat, dst::Mat; mask::Mat = Mat()) = bitwise_and(src1, src2, dst, mask)

function bitwise_and(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_bitwise_and(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_and(src1::UMat, src2::UMat, dst::UMat; mask::UMat = UMat()) = bitwise_and(src1, src2, dst, mask)

function cvtColorTwoPlane(src1::Mat, src2::Mat, code::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_cvtColorTwoPlane(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(code),julia_to_cpp(dst)))
end
cvtColorTwoPlane(src1::Mat, src2::Mat, code::Int32, dst::Mat; ) = cvtColorTwoPlane(src1, src2, code, dst)

function cvtColorTwoPlane(src1::UMat, src2::UMat, code::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_cvtColorTwoPlane(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(code),julia_to_cpp(dst)))
end
cvtColorTwoPlane(src1::UMat, src2::UMat, code::Int32, dst::UMat; ) = cvtColorTwoPlane(src1, src2, code, dst)

function PCACompute2(data::Mat, mean::Mat, eigenvectors::Mat, eigenvalues::Mat, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_PCACompute2(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues),julia_to_cpp(maxComponents)))
end
PCACompute2(data::Mat, mean::Mat, eigenvectors::Mat, eigenvalues::Mat; maxComponents::Int32 = 0) = PCACompute2(data, mean, eigenvectors, eigenvalues, maxComponents)

function PCACompute2(data::UMat, mean::UMat, eigenvectors::UMat, eigenvalues::UMat, maxComponents::Int32)
	return cpp_to_julia(jlopencv_cv_PCACompute2(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues),julia_to_cpp(maxComponents)))
end
PCACompute2(data::UMat, mean::UMat, eigenvectors::UMat, eigenvalues::UMat; maxComponents::Int32 = 0) = PCACompute2(data, mean, eigenvectors, eigenvalues, maxComponents)

function PCACompute2(data::Mat, mean::Mat, retainedVariance::Float64, eigenvectors::Mat, eigenvalues::Mat)
	return cpp_to_julia(jlopencv_cv_PCACompute2(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues)))
end
PCACompute2(data::Mat, mean::Mat, retainedVariance::Float64, eigenvectors::Mat, eigenvalues::Mat; ) = PCACompute2(data, mean, retainedVariance, eigenvectors, eigenvalues)

function PCACompute2(data::UMat, mean::UMat, retainedVariance::Float64, eigenvectors::UMat, eigenvalues::UMat)
	return cpp_to_julia(jlopencv_cv_PCACompute2(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues)))
end
PCACompute2(data::UMat, mean::UMat, retainedVariance::Float64, eigenvectors::UMat, eigenvalues::UMat; ) = PCACompute2(data, mean, retainedVariance, eigenvectors, eigenvalues)

function waitKeyEx(delay::Int32)
	return cpp_to_julia(jlopencv_cv_waitKeyEx(julia_to_cpp(delay)))
end
waitKeyEx(; delay::Int32 = 0) = waitKeyEx(delay)

function triangulatePoints(projMatr1::Mat, projMatr2::Mat, projPoints1::Mat, projPoints2::Mat, points4D::Mat)
	return cpp_to_julia(jlopencv_cv_triangulatePoints(julia_to_cpp(projMatr1),julia_to_cpp(projMatr2),julia_to_cpp(projPoints1),julia_to_cpp(projPoints2),julia_to_cpp(points4D)))
end
triangulatePoints(projMatr1::Mat, projMatr2::Mat, projPoints1::Mat, projPoints2::Mat, points4D::Mat; ) = triangulatePoints(projMatr1, projMatr2, projPoints1, projPoints2, points4D)

function triangulatePoints(projMatr1::UMat, projMatr2::UMat, projPoints1::UMat, projPoints2::UMat, points4D::UMat)
	return cpp_to_julia(jlopencv_cv_triangulatePoints(julia_to_cpp(projMatr1),julia_to_cpp(projMatr2),julia_to_cpp(projPoints1),julia_to_cpp(projPoints2),julia_to_cpp(points4D)))
end
triangulatePoints(projMatr1::UMat, projMatr2::UMat, projPoints1::UMat, projPoints2::UMat, points4D::UMat; ) = triangulatePoints(projMatr1, projMatr2, projPoints1, projPoints2, points4D)

function calibrateHandEye(R_gripper2base::vector{Mat}, t_gripper2base::vector{Mat}, R_target2cam::vector{Mat}, t_target2cam::vector{Mat}, R_cam2gripper::Mat, t_cam2gripper::Mat, method::HandEyeCalibrationMethod)
	return cpp_to_julia(jlopencv_cv_calibrateHandEye(julia_to_cpp(R_gripper2base),julia_to_cpp(t_gripper2base),julia_to_cpp(R_target2cam),julia_to_cpp(t_target2cam),julia_to_cpp(R_cam2gripper),julia_to_cpp(t_cam2gripper),julia_to_cpp(method)))
end
calibrateHandEye(R_gripper2base::vector{Mat}, t_gripper2base::vector{Mat}, R_target2cam::vector{Mat}, t_target2cam::vector{Mat}, R_cam2gripper::Mat, t_cam2gripper::Mat; method::HandEyeCalibrationMethod = CALIB_HAND_EYE_TSAI) = calibrateHandEye(R_gripper2base, t_gripper2base, R_target2cam, t_target2cam, R_cam2gripper, t_cam2gripper, method)

function calibrateHandEye(R_gripper2base::vector{UMat}, t_gripper2base::vector{UMat}, R_target2cam::vector{UMat}, t_target2cam::vector{UMat}, R_cam2gripper::UMat, t_cam2gripper::UMat, method::HandEyeCalibrationMethod)
	return cpp_to_julia(jlopencv_cv_calibrateHandEye(julia_to_cpp(R_gripper2base),julia_to_cpp(t_gripper2base),julia_to_cpp(R_target2cam),julia_to_cpp(t_target2cam),julia_to_cpp(R_cam2gripper),julia_to_cpp(t_cam2gripper),julia_to_cpp(method)))
end
calibrateHandEye(R_gripper2base::vector{UMat}, t_gripper2base::vector{UMat}, R_target2cam::vector{UMat}, t_target2cam::vector{UMat}, R_cam2gripper::UMat, t_cam2gripper::UMat; method::HandEyeCalibrationMethod = CALIB_HAND_EYE_TSAI) = calibrateHandEye(R_gripper2base, t_gripper2base, R_target2cam, t_target2cam, R_cam2gripper, t_cam2gripper, method)

function ellipse(img::Mat, center::PoInt32, axes::Size, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(startAngle),julia_to_cpp(endAngle),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
ellipse(img::Mat, center::PoInt32, axes::Size, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = ellipse(img, center, axes, angle, startAngle, endAngle, color, thickness, lineType, shift)

function ellipse(img::UMat, center::PoInt32, axes::Size, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(startAngle),julia_to_cpp(endAngle),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
ellipse(img::UMat, center::PoInt32, axes::Size, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = ellipse(img, center, axes, angle, startAngle, endAngle, color, thickness, lineType, shift)

function ellipse(img::Mat, box::RotatedRect, color::Scalar, thickness::Int32, lineType::Int32)
	return cpp_to_julia(jlopencv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(box),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType)))
end
ellipse(img::Mat, box::RotatedRect, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8) = ellipse(img, box, color, thickness, lineType)

function ellipse(img::UMat, box::RotatedRect, color::Scalar, thickness::Int32, lineType::Int32)
	return cpp_to_julia(jlopencv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(box),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType)))
end
ellipse(img::UMat, box::RotatedRect, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8) = ellipse(img, box, color, thickness, lineType)

function meanShift(probImage::Mat, window::Rect, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_meanShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end
meanShift(probImage::Mat, window::Rect, criteria::TermCriteria; ) = meanShift(probImage, window, criteria)

function meanShift(probImage::UMat, window::Rect, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_meanShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end
meanShift(probImage::UMat, window::Rect, criteria::TermCriteria; ) = meanShift(probImage, window, criteria)

function correctMatches(F::Mat, points1::Mat, points2::Mat, newPoints1::Mat, newPoints2::Mat)
	return cpp_to_julia(jlopencv_cv_correctMatches(julia_to_cpp(F),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(newPoints1),julia_to_cpp(newPoints2)))
end
correctMatches(F::Mat, points1::Mat, points2::Mat, newPoints1::Mat, newPoints2::Mat; ) = correctMatches(F, points1, points2, newPoints1, newPoints2)

function correctMatches(F::UMat, points1::UMat, points2::UMat, newPoints1::UMat, newPoints2::UMat)
	return cpp_to_julia(jlopencv_cv_correctMatches(julia_to_cpp(F),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(newPoints1),julia_to_cpp(newPoints2)))
end
correctMatches(F::UMat, points1::UMat, points2::UMat, newPoints1::UMat, newPoints2::UMat; ) = correctMatches(F, points1, points2, newPoints1, newPoints2)

function isContourConvex(contour::Mat)
	return cpp_to_julia(jlopencv_cv_isContourConvex(julia_to_cpp(contour)))
end
isContourConvex(contour::Mat; ) = isContourConvex(contour)

function isContourConvex(contour::UMat)
	return cpp_to_julia(jlopencv_cv_isContourConvex(julia_to_cpp(contour)))
end
isContourConvex(contour::UMat; ) = isContourConvex(contour)

function log(src::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_log(julia_to_cpp(src),julia_to_cpp(dst)))
end
log(src::Mat, dst::Mat; ) = log(src, dst)

function log(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_log(julia_to_cpp(src),julia_to_cpp(dst)))
end
log(src::UMat, dst::UMat; ) = log(src, dst)

function fitEllipseDirect(points::Mat)
	return cpp_to_julia(jlopencv_cv_fitEllipseDirect(julia_to_cpp(points)))
end
fitEllipseDirect(points::Mat; ) = fitEllipseDirect(points)

function fitEllipseDirect(points::UMat)
	return cpp_to_julia(jlopencv_cv_fitEllipseDirect(julia_to_cpp(points)))
end
fitEllipseDirect(points::UMat; ) = fitEllipseDirect(points)

function getOptimalNewCameraMatrix(cameraMatrix::Mat, distCoeffs::Mat, imageSize::Size, alpha::Float64, newImgSize::Size, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_getOptimalNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imageSize),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(centerPrincipalPoint)))
end
getOptimalNewCameraMatrix(cameraMatrix::Mat, distCoeffs::Mat, imageSize::Size, alpha::Float64; newImgSize::Size = Size(), centerPrincipalPoint::Bool = false) = getOptimalNewCameraMatrix(cameraMatrix, distCoeffs, imageSize, alpha, newImgSize, centerPrincipalPoint)

function getOptimalNewCameraMatrix(cameraMatrix::UMat, distCoeffs::UMat, imageSize::Size, alpha::Float64, newImgSize::Size, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_getOptimalNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imageSize),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(centerPrincipalPoint)))
end
getOptimalNewCameraMatrix(cameraMatrix::UMat, distCoeffs::UMat, imageSize::Size, alpha::Float64; newImgSize::Size = Size(), centerPrincipalPoint::Bool = false) = getOptimalNewCameraMatrix(cameraMatrix, distCoeffs, imageSize, alpha, newImgSize, centerPrincipalPoint)

function projectPoints(objectPoints::Mat, rvec::Mat, tvec::Mat, cameraMatrix::Mat, distCoeffs::Mat, imagePoints::Mat, jacobian::Mat, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imagePoints),julia_to_cpp(jacobian),julia_to_cpp(aspectRatio)))
end
projectPoints(objectPoints::Mat, rvec::Mat, tvec::Mat, cameraMatrix::Mat, distCoeffs::Mat, imagePoints::Mat, jacobian::Mat; aspectRatio::Float64 = 0) = projectPoints(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, imagePoints, jacobian, aspectRatio)

function projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, cameraMatrix::UMat, distCoeffs::UMat, imagePoints::UMat, jacobian::UMat, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imagePoints),julia_to_cpp(jacobian),julia_to_cpp(aspectRatio)))
end
projectPoints(objectPoints::UMat, rvec::UMat, tvec::UMat, cameraMatrix::UMat, distCoeffs::UMat, imagePoints::UMat, jacobian::UMat; aspectRatio::Float64 = 0) = projectPoints(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, imagePoints, jacobian, aspectRatio)

function dft(src::Mat, dst::Mat, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_dft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
dft(src::Mat, dst::Mat; flags::Int32 = 0, nonzeroRows::Int32 = 0) = dft(src, dst, flags, nonzeroRows)

function dft(src::UMat, dst::UMat, flags::Int32, nonzeroRows::Int32)
	return cpp_to_julia(jlopencv_cv_dft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
dft(src::UMat, dst::UMat; flags::Int32 = 0, nonzeroRows::Int32 = 0) = dft(src, dst, flags, nonzeroRows)

function invert(src::Mat, dst::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_invert(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
invert(src::Mat, dst::Mat; flags::Int32 = DECOMP_LU) = invert(src, dst, flags)

function invert(src::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_invert(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
invert(src::UMat, dst::UMat; flags::Int32 = DECOMP_LU) = invert(src, dst, flags)

function drawKeypoints(image::Mat, keypoints::vector{KeyPoInt32}, outImage::Mat, color::Scalar, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_drawKeypoints(julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(outImage),julia_to_cpp(color),julia_to_cpp(flags)))
end
drawKeypoints(image::Mat, keypoints::vector{KeyPoInt32}, outImage::Mat; color::Scalar = Scalar::all(-1), flags::DrawMatchesFlags = DrawMatchesFlags::DEFAULT) = drawKeypoints(image, keypoints, outImage, color, flags)

function drawKeypoints(image::UMat, keypoints::vector{KeyPoInt32}, outImage::UMat, color::Scalar, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_drawKeypoints(julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(outImage),julia_to_cpp(color),julia_to_cpp(flags)))
end
drawKeypoints(image::UMat, keypoints::vector{KeyPoInt32}, outImage::UMat; color::Scalar = Scalar::all(-1), flags::DrawMatchesFlags = DrawMatchesFlags::DEFAULT) = drawKeypoints(image, keypoints, outImage, color, flags)

function transform(src::Mat, m::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_transform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
transform(src::Mat, m::Mat, dst::Mat; ) = transform(src, m, dst)

function transform(src::UMat, m::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_transform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
transform(src::UMat, m::UMat, dst::UMat; ) = transform(src, m, dst)

function distanceTransform(src::Mat, distanceType::Int32, maskSize::Int32, dst::Mat, dstType::Int32)
	return cpp_to_julia(jlopencv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(dstType)))
end
distanceTransform(src::Mat, distanceType::Int32, maskSize::Int32, dst::Mat; dstType::Int32 = CV_32F) = distanceTransform(src, distanceType, maskSize, dst, dstType)

function distanceTransform(src::UMat, distanceType::Int32, maskSize::Int32, dst::UMat, dstType::Int32)
	return cpp_to_julia(jlopencv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(dstType)))
end
distanceTransform(src::UMat, distanceType::Int32, maskSize::Int32, dst::UMat; dstType::Int32 = CV_32F) = distanceTransform(src, distanceType, maskSize, dst, dstType)

function buildOpticalFlowPyramid(img::Mat, winSize::Size, maxLevel::Int32, withDerivatives::Bool, pyrBorder::Int32, derivBorder::Int32, tryReuseInputImage::Bool)
	return cpp_to_julia(jlopencv_cv_buildOpticalFlowPyramid(julia_to_cpp(img),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(withDerivatives),julia_to_cpp(pyrBorder),julia_to_cpp(derivBorder),julia_to_cpp(tryReuseInputImage)))
end
buildOpticalFlowPyramid(img::Mat, winSize::Size, maxLevel::Int32; withDerivatives::Bool = true, pyrBorder::Int32 = BORDER_REFLECT_101, derivBorder::Int32 = BORDER_CONSTANT, tryReuseInputImage::Bool = true) = buildOpticalFlowPyramid(img, winSize, maxLevel, withDerivatives, pyrBorder, derivBorder, tryReuseInputImage)

function buildOpticalFlowPyramid(img::UMat, winSize::Size, maxLevel::Int32, withDerivatives::Bool, pyrBorder::Int32, derivBorder::Int32, tryReuseInputImage::Bool)
	return cpp_to_julia(jlopencv_cv_buildOpticalFlowPyramid(julia_to_cpp(img),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(withDerivatives),julia_to_cpp(pyrBorder),julia_to_cpp(derivBorder),julia_to_cpp(tryReuseInputImage)))
end
buildOpticalFlowPyramid(img::UMat, winSize::Size, maxLevel::Int32; withDerivatives::Bool = true, pyrBorder::Int32 = BORDER_REFLECT_101, derivBorder::Int32 = BORDER_CONSTANT, tryReuseInputImage::Bool = true) = buildOpticalFlowPyramid(img, winSize, maxLevel, withDerivatives, pyrBorder, derivBorder, tryReuseInputImage)

function minEnclosingCircle(points::Mat)
	return cpp_to_julia(jlopencv_cv_minEnclosingCircle(julia_to_cpp(points)))
end
minEnclosingCircle(points::Mat; ) = minEnclosingCircle(points)

function minEnclosingCircle(points::UMat)
	return cpp_to_julia(jlopencv_cv_minEnclosingCircle(julia_to_cpp(points)))
end
minEnclosingCircle(points::UMat; ) = minEnclosingCircle(points)

function filterSpeckles(img::Mat, newVal::Float64, maxSpeckleSize::Int32, maxDiff::Float64, buf::Mat)
	return cpp_to_julia(jlopencv_cv_filterSpeckles(julia_to_cpp(img),julia_to_cpp(newVal),julia_to_cpp(maxSpeckleSize),julia_to_cpp(maxDiff),julia_to_cpp(buf)))
end
filterSpeckles(img::Mat, newVal::Float64, maxSpeckleSize::Int32, maxDiff::Float64; buf::Mat = Mat()) = filterSpeckles(img, newVal, maxSpeckleSize, maxDiff, buf)

function filterSpeckles(img::UMat, newVal::Float64, maxSpeckleSize::Int32, maxDiff::Float64, buf::UMat)
	return cpp_to_julia(jlopencv_cv_filterSpeckles(julia_to_cpp(img),julia_to_cpp(newVal),julia_to_cpp(maxSpeckleSize),julia_to_cpp(maxDiff),julia_to_cpp(buf)))
end
filterSpeckles(img::UMat, newVal::Float64, maxSpeckleSize::Int32, maxDiff::Float64; buf::UMat = UMat()) = filterSpeckles(img, newVal, maxSpeckleSize, maxDiff, buf)

function clipLine(imgRect::Rect, pt1::PoInt32, pt2::PoInt32)
	return cpp_to_julia(jlopencv_cv_clipLine(julia_to_cpp(imgRect),julia_to_cpp(pt1),julia_to_cpp(pt2)))
end
clipLine(imgRect::Rect, pt1::PoInt32, pt2::PoInt32; ) = clipLine(imgRect, pt1, pt2)

function writeOpticalFlow(path::String, flow::Mat)
	return cpp_to_julia(jlopencv_cv_writeOpticalFlow(julia_to_cpp(path),julia_to_cpp(flow)))
end
writeOpticalFlow(path::String, flow::Mat; ) = writeOpticalFlow(path, flow)

function writeOpticalFlow(path::String, flow::UMat)
	return cpp_to_julia(jlopencv_cv_writeOpticalFlow(julia_to_cpp(path),julia_to_cpp(flow)))
end
writeOpticalFlow(path::String, flow::UMat; ) = writeOpticalFlow(path, flow)

function imdecode(buf::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_imdecode(julia_to_cpp(buf),julia_to_cpp(flags)))
end
imdecode(buf::Mat, flags::Int32; ) = imdecode(buf, flags)

function imdecode(buf::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_imdecode(julia_to_cpp(buf),julia_to_cpp(flags)))
end
imdecode(buf::UMat, flags::Int32; ) = imdecode(buf, flags)

function approxPolyDP(curve::Mat, epsilon::Float64, closed::Bool, approxCurve::Mat)
	return cpp_to_julia(jlopencv_cv_approxPolyDP(julia_to_cpp(curve),julia_to_cpp(epsilon),julia_to_cpp(closed),julia_to_cpp(approxCurve)))
end
approxPolyDP(curve::Mat, epsilon::Float64, closed::Bool, approxCurve::Mat; ) = approxPolyDP(curve, epsilon, closed, approxCurve)

function approxPolyDP(curve::UMat, epsilon::Float64, closed::Bool, approxCurve::UMat)
	return cpp_to_julia(jlopencv_cv_approxPolyDP(julia_to_cpp(curve),julia_to_cpp(epsilon),julia_to_cpp(closed),julia_to_cpp(approxCurve)))
end
approxPolyDP(curve::UMat, epsilon::Float64, closed::Bool, approxCurve::UMat; ) = approxPolyDP(curve, epsilon, closed, approxCurve)

function checkChessboard(img::Mat, size::Size)
	return cpp_to_julia(jlopencv_cv_checkChessboard(julia_to_cpp(img),julia_to_cpp(size)))
end
checkChessboard(img::Mat, size::Size; ) = checkChessboard(img, size)

function checkChessboard(img::UMat, size::Size)
	return cpp_to_julia(jlopencv_cv_checkChessboard(julia_to_cpp(img),julia_to_cpp(size)))
end
checkChessboard(img::UMat, size::Size; ) = checkChessboard(img, size)

function getFontScaleFromHeight(fontFace::Int32, pixelHeight::Int32, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_getFontScaleFromHeight(julia_to_cpp(fontFace),julia_to_cpp(pixelHeight),julia_to_cpp(thickness)))
end
getFontScaleFromHeight(fontFace::Int32, pixelHeight::Int32; thickness::Int32 = 1) = getFontScaleFromHeight(fontFace, pixelHeight, thickness)

function createGeneralizedHoughBallard()
	return cpp_to_julia(jlopencv_cv_createGeneralizedHoughBallard())
end
createGeneralizedHoughBallard(; ) = createGeneralizedHoughBallard()

function destroyWindow(winname::String)
	return cpp_to_julia(jlopencv_cv_destroyWindow(julia_to_cpp(winname)))
end
destroyWindow(winname::String; ) = destroyWindow(winname)

function setIdentity(mtx::Mat, s::Scalar)
	return cpp_to_julia(jlopencv_cv_setIdentity(julia_to_cpp(mtx),julia_to_cpp(s)))
end
setIdentity(mtx::Mat; s::Scalar = Scalar(1)) = setIdentity(mtx, s)

function setIdentity(mtx::UMat, s::Scalar)
	return cpp_to_julia(jlopencv_cv_setIdentity(julia_to_cpp(mtx),julia_to_cpp(s)))
end
setIdentity(mtx::UMat; s::Scalar = Scalar(1)) = setIdentity(mtx, s)

function preCornerDetect(src::Mat, ksize::Int32, dst::Mat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_preCornerDetect(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
preCornerDetect(src::Mat, ksize::Int32, dst::Mat; borderType::Int32 = BORDER_DEFAULT) = preCornerDetect(src, ksize, dst, borderType)

function preCornerDetect(src::UMat, ksize::Int32, dst::UMat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_preCornerDetect(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
preCornerDetect(src::UMat, ksize::Int32, dst::UMat; borderType::Int32 = BORDER_DEFAULT) = preCornerDetect(src, ksize, dst, borderType)

function estimateAffinePartial2D(from::Mat, to::Mat, inliers::Mat, method::Int32, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_estimateAffinePartial2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffinePartial2D(from::Mat, to::Mat, inliers::Mat; method::Int32 = RANSAC, ransacReprojThreshold::Float64 = 3, maxIters::size_t = 2000, confidence::Float64 = 0.99, refineIters::size_t = 10) = estimateAffinePartial2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function estimateAffinePartial2D(from::UMat, to::UMat, inliers::UMat, method::Int32, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_estimateAffinePartial2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffinePartial2D(from::UMat, to::UMat, inliers::UMat; method::Int32 = RANSAC, ransacReprojThreshold::Float64 = 3, maxIters::size_t = 2000, confidence::Float64 = 0.99, refineIters::size_t = 10) = estimateAffinePartial2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function sort(src::Mat, flags::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_sort(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sort(src::Mat, flags::Int32, dst::Mat; ) = sort(src, flags, dst)

function sort(src::UMat, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_sort(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sort(src::UMat, flags::Int32, dst::UMat; ) = sort(src, flags, dst)

function insertChannel(src::Mat, dst::Mat, coi::Int32)
	return cpp_to_julia(jlopencv_cv_insertChannel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(coi)))
end
insertChannel(src::Mat, dst::Mat, coi::Int32; ) = insertChannel(src, dst, coi)

function insertChannel(src::UMat, dst::UMat, coi::Int32)
	return cpp_to_julia(jlopencv_cv_insertChannel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(coi)))
end
insertChannel(src::UMat, dst::UMat, coi::Int32; ) = insertChannel(src, dst, coi)

function determinant(mtx::Mat)
	return cpp_to_julia(jlopencv_cv_determinant(julia_to_cpp(mtx)))
end
determinant(mtx::Mat; ) = determinant(mtx)

function determinant(mtx::UMat)
	return cpp_to_julia(jlopencv_cv_determinant(julia_to_cpp(mtx)))
end
determinant(mtx::UMat; ) = determinant(mtx)

function erode(src::Mat, kernel::Mat, dst::Mat, anchor::PoInt32, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_erode(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
erode(src::Mat, kernel::Mat, dst::Mat; anchor::PoInt32 = Point(-1,-1), iterations::Int32 = 1, borderType::Int32 = BORDER_CONSTANT, borderValue::Scalar = morphologyDefaultBorderValue()) = erode(src, kernel, dst, anchor, iterations, borderType, borderValue)

function erode(src::UMat, kernel::UMat, dst::UMat, anchor::PoInt32, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_erode(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
erode(src::UMat, kernel::UMat, dst::UMat; anchor::PoInt32 = Point(-1,-1), iterations::Int32 = 1, borderType::Int32 = BORDER_CONSTANT, borderValue::Scalar = morphologyDefaultBorderValue()) = erode(src, kernel, dst, anchor, iterations, borderType, borderValue)

function copyMakeBorder(src::Mat, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32, dst::Mat, value::Scalar)
	return cpp_to_julia(jlopencv_cv_copyMakeBorder(julia_to_cpp(src),julia_to_cpp(top),julia_to_cpp(bottom),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(borderType),julia_to_cpp(dst),julia_to_cpp(value)))
end
copyMakeBorder(src::Mat, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32, dst::Mat; value::Scalar = Scalar()) = copyMakeBorder(src, top, bottom, left, right, borderType, dst, value)

function copyMakeBorder(src::UMat, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32, dst::UMat, value::Scalar)
	return cpp_to_julia(jlopencv_cv_copyMakeBorder(julia_to_cpp(src),julia_to_cpp(top),julia_to_cpp(bottom),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(borderType),julia_to_cpp(dst),julia_to_cpp(value)))
end
copyMakeBorder(src::UMat, top::Int32, bottom::Int32, left::Int32, right::Int32, borderType::Int32, dst::UMat; value::Scalar = Scalar()) = copyMakeBorder(src, top, bottom, left, right, borderType, dst, value)

function accumulateWeighted(src::Mat, dst::Mat, alpha::Float64, mask::Mat)
	return cpp_to_julia(jlopencv_cv_accumulateWeighted(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(mask)))
end
accumulateWeighted(src::Mat, dst::Mat, alpha::Float64; mask::Mat = Mat()) = accumulateWeighted(src, dst, alpha, mask)

function accumulateWeighted(src::UMat, dst::UMat, alpha::Float64, mask::UMat)
	return cpp_to_julia(jlopencv_cv_accumulateWeighted(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(mask)))
end
accumulateWeighted(src::UMat, dst::UMat, alpha::Float64; mask::UMat = UMat()) = accumulateWeighted(src, dst, alpha, mask)

function setTrackbarPos(trackbarname::String, winname::String, pos::Int32)
	return cpp_to_julia(jlopencv_cv_setTrackbarPos(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(pos)))
end
setTrackbarPos(trackbarname::String, winname::String, pos::Int32; ) = setTrackbarPos(trackbarname, winname, pos)

function rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect, intersectingRegion::Mat)
	return cpp_to_julia(jlopencv_cv_rotatedRectangleIntersection(julia_to_cpp(rect1),julia_to_cpp(rect2),julia_to_cpp(intersectingRegion)))
end
rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect, intersectingRegion::Mat; ) = rotatedRectangleIntersection(rect1, rect2, intersectingRegion)

function rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect, intersectingRegion::UMat)
	return cpp_to_julia(jlopencv_cv_rotatedRectangleIntersection(julia_to_cpp(rect1),julia_to_cpp(rect2),julia_to_cpp(intersectingRegion)))
end
rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect, intersectingRegion::UMat; ) = rotatedRectangleIntersection(rect1, rect2, intersectingRegion)

function Mahalanobis(v1::Mat, v2::Mat, icovar::Mat)
	return cpp_to_julia(jlopencv_cv_Mahalanobis(julia_to_cpp(v1),julia_to_cpp(v2),julia_to_cpp(icovar)))
end
Mahalanobis(v1::Mat, v2::Mat, icovar::Mat; ) = Mahalanobis(v1, v2, icovar)

function Mahalanobis(v1::UMat, v2::UMat, icovar::UMat)
	return cpp_to_julia(jlopencv_cv_Mahalanobis(julia_to_cpp(v1),julia_to_cpp(v2),julia_to_cpp(icovar)))
end
Mahalanobis(v1::UMat, v2::UMat, icovar::UMat; ) = Mahalanobis(v1, v2, icovar)

function connectedComponents(image::Mat, labels::Mat, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponents(image::Mat, labels::Mat; connectivity::Int32 = 8, ltype::Int32 = CV_32S) = connectedComponents(image, labels, connectivity, ltype)

function connectedComponents(image::UMat, labels::UMat, connectivity::Int32, ltype::Int32)
	return cpp_to_julia(jlopencv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponents(image::UMat, labels::UMat; connectivity::Int32 = 8, ltype::Int32 = CV_32S) = connectedComponents(image, labels, connectivity, ltype)

function undistortPointsIter(src::Mat, cameraMatrix::Mat, distCoeffs::Mat, R::Mat, P::Mat, criteria::TermCriteria, dst::Mat)
	return cpp_to_julia(jlopencv_cv_undistortPointsIter(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(criteria),julia_to_cpp(dst)))
end
undistortPointsIter(src::Mat, cameraMatrix::Mat, distCoeffs::Mat, R::Mat, P::Mat, criteria::TermCriteria, dst::Mat; ) = undistortPointsIter(src, cameraMatrix, distCoeffs, R, P, criteria, dst)

function undistortPointsIter(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, R::UMat, P::UMat, criteria::TermCriteria, dst::UMat)
	return cpp_to_julia(jlopencv_cv_undistortPointsIter(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(criteria),julia_to_cpp(dst)))
end
undistortPointsIter(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, R::UMat, P::UMat, criteria::TermCriteria, dst::UMat; ) = undistortPointsIter(src, cameraMatrix, distCoeffs, R, P, criteria, dst)

function findChessboardCornersSB(image::Mat, patternSize::Size, corners::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCornersSB(image::Mat, patternSize::Size, corners::Mat; flags::Int32 = 0) = findChessboardCornersSB(image, patternSize, corners, flags)

function findChessboardCornersSB(image::UMat, patternSize::Size, corners::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCornersSB(image::UMat, patternSize::Size, corners::UMat; flags::Int32 = 0) = findChessboardCornersSB(image, patternSize, corners, flags)

function resizeWindow(winname::String, width::Int32, height::Int32)
	return cpp_to_julia(jlopencv_cv_resizeWindow(julia_to_cpp(winname),julia_to_cpp(width),julia_to_cpp(height)))
end
resizeWindow(winname::String, width::Int32, height::Int32; ) = resizeWindow(winname, width, height)

function resizeWindow(winname::String, size::Size)
	return cpp_to_julia(jlopencv_cv_resizeWindow(julia_to_cpp(winname),julia_to_cpp(size)))
end
resizeWindow(winname::String, size::Size; ) = resizeWindow(winname, size)

function calibrateCamera(objectPoints::vector{Mat}, imagePoints::vector{Mat}, imageSize::Size, cameraMatrix::Mat, distCoeffs::Mat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCamera(objectPoints::vector{Mat}, imagePoints::vector{Mat}, imageSize::Size, cameraMatrix::Mat, distCoeffs::Mat; flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCamera(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, flags, criteria)

function calibrateCamera(objectPoints::vector{UMat}, imagePoints::vector{UMat}, imageSize::Size, cameraMatrix::UMat, distCoeffs::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCamera(objectPoints::vector{UMat}, imagePoints::vector{UMat}, imageSize::Size, cameraMatrix::UMat, distCoeffs::UMat; flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCamera(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, flags, criteria)

function createBackgroundSubtractorKNN(history::Int32, dist2Threshold::Float64, detectShadows::Bool)
	return cpp_to_julia(jlopencv_cv_createBackgroundSubtractorKNN(julia_to_cpp(history),julia_to_cpp(dist2Threshold),julia_to_cpp(detectShadows)))
end
createBackgroundSubtractorKNN(; history::Int32 = 500, dist2Threshold::Float64 = 400.0, detectShadows::Bool = true) = createBackgroundSubtractorKNN(history, dist2Threshold, detectShadows)

function convertMaps(map1::Mat, map2::Mat, dstmap1type::Int32, dstmap1::Mat, dstmap2::Mat, nninterpolation::Bool)
	return cpp_to_julia(jlopencv_cv_convertMaps(julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(dstmap1type),julia_to_cpp(dstmap1),julia_to_cpp(dstmap2),julia_to_cpp(nninterpolation)))
end
convertMaps(map1::Mat, map2::Mat, dstmap1type::Int32, dstmap1::Mat, dstmap2::Mat; nninterpolation::Bool = false) = convertMaps(map1, map2, dstmap1type, dstmap1, dstmap2, nninterpolation)

function convertMaps(map1::UMat, map2::UMat, dstmap1type::Int32, dstmap1::UMat, dstmap2::UMat, nninterpolation::Bool)
	return cpp_to_julia(jlopencv_cv_convertMaps(julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(dstmap1type),julia_to_cpp(dstmap1),julia_to_cpp(dstmap2),julia_to_cpp(nninterpolation)))
end
convertMaps(map1::UMat, map2::UMat, dstmap1type::Int32, dstmap1::UMat, dstmap2::UMat; nninterpolation::Bool = false) = convertMaps(map1, map2, dstmap1type, dstmap1, dstmap2, nninterpolation)

function line(img::Mat, pt1::PoInt32, pt2::PoInt32, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_line(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
line(img::Mat, pt1::PoInt32, pt2::PoInt32, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = line(img, pt1, pt2, color, thickness, lineType, shift)

function line(img::UMat, pt1::PoInt32, pt2::PoInt32, color::Scalar, thickness::Int32, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_line(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
line(img::UMat, pt1::PoInt32, pt2::PoInt32, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, shift::Int32 = 0) = line(img, pt1, pt2, color, thickness, lineType, shift)

function solvePnPGeneric(objectPoints::Mat, imagePoints::Mat, cameraMatrix::Mat, distCoeffs::Mat, useExtrinsicGuess::Bool, flags::SolvePnPMethod, rvec::Mat, tvec::Mat, reprojectionError::Mat)
	return cpp_to_julia(jlopencv_cv_solvePnPGeneric(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(reprojectionError)))
end
solvePnPGeneric(objectPoints::Mat, imagePoints::Mat, cameraMatrix::Mat, distCoeffs::Mat, useExtrinsicGuess::Bool; useExtrinsicGuess::Bool = false, flags::SolvePnPMethod = SOLVEPNP_ITERATIVE, rvec::Mat = Mat(), tvec::Mat = Mat()) = solvePnPGeneric(objectPoints, imagePoints, cameraMatrix, distCoeffs, useExtrinsicGuess, flags, rvec, tvec, reprojectionError)

function solvePnPGeneric(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, useExtrinsicGuess::Bool, flags::SolvePnPMethod, rvec::UMat, tvec::UMat, reprojectionError::UMat)
	return cpp_to_julia(jlopencv_cv_solvePnPGeneric(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(reprojectionError)))
end
solvePnPGeneric(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, useExtrinsicGuess::Bool; useExtrinsicGuess::Bool = false, flags::SolvePnPMethod = SOLVEPNP_ITERATIVE, rvec::UMat = UMat(), tvec::UMat = UMat()) = solvePnPGeneric(objectPoints, imagePoints, cameraMatrix, distCoeffs, useExtrinsicGuess, flags, rvec, tvec, reprojectionError)

function bilateralFilter(src::Mat, d::Int32, sigmaColor::Float64, sigmaSpace::Float64, dst::Mat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_bilateralFilter(julia_to_cpp(src),julia_to_cpp(d),julia_to_cpp(sigmaColor),julia_to_cpp(sigmaSpace),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
bilateralFilter(src::Mat, d::Int32, sigmaColor::Float64, sigmaSpace::Float64, dst::Mat; borderType::Int32 = BORDER_DEFAULT) = bilateralFilter(src, d, sigmaColor, sigmaSpace, dst, borderType)

function bilateralFilter(src::UMat, d::Int32, sigmaColor::Float64, sigmaSpace::Float64, dst::UMat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_bilateralFilter(julia_to_cpp(src),julia_to_cpp(d),julia_to_cpp(sigmaColor),julia_to_cpp(sigmaSpace),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
bilateralFilter(src::UMat, d::Int32, sigmaColor::Float64, sigmaSpace::Float64, dst::UMat; borderType::Int32 = BORDER_DEFAULT) = bilateralFilter(src, d, sigmaColor, sigmaSpace, dst, borderType)

function resize(src::Mat, dsize::Size, dst::Mat, fx::Float64, fy::Float64, interpolation::Int32)
	return cpp_to_julia(jlopencv_cv_resize(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(fx),julia_to_cpp(fy),julia_to_cpp(interpolation)))
end
resize(src::Mat, dsize::Size, dst::Mat; fx::Float64 = 0, fy::Float64 = 0, interpolation::Int32 = INTER_LINEAR) = resize(src, dsize, dst, fx, fy, interpolation)

function resize(src::UMat, dsize::Size, dst::UMat, fx::Float64, fy::Float64, interpolation::Int32)
	return cpp_to_julia(jlopencv_cv_resize(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(fx),julia_to_cpp(fy),julia_to_cpp(interpolation)))
end
resize(src::UMat, dsize::Size, dst::UMat; fx::Float64 = 0, fy::Float64 = 0, interpolation::Int32 = INTER_LINEAR) = resize(src, dsize, dst, fx, fy, interpolation)

function HoughCircles(image::Mat, method::Int32, dp::Float64, minDist::Float64, circles::Mat, param1::Float64, param2::Float64, minRadius::Int32, maxRadius::Int32)
	return cpp_to_julia(jlopencv_cv_HoughCircles(julia_to_cpp(image),julia_to_cpp(method),julia_to_cpp(dp),julia_to_cpp(minDist),julia_to_cpp(circles),julia_to_cpp(param1),julia_to_cpp(param2),julia_to_cpp(minRadius),julia_to_cpp(maxRadius)))
end
HoughCircles(image::Mat, method::Int32, dp::Float64, minDist::Float64, circles::Mat; param1::Float64 = 100, param2::Float64 = 100, minRadius::Int32 = 0, maxRadius::Int32 = 0) = HoughCircles(image, method, dp, minDist, circles, param1, param2, minRadius, maxRadius)

function HoughCircles(image::UMat, method::Int32, dp::Float64, minDist::Float64, circles::UMat, param1::Float64, param2::Float64, minRadius::Int32, maxRadius::Int32)
	return cpp_to_julia(jlopencv_cv_HoughCircles(julia_to_cpp(image),julia_to_cpp(method),julia_to_cpp(dp),julia_to_cpp(minDist),julia_to_cpp(circles),julia_to_cpp(param1),julia_to_cpp(param2),julia_to_cpp(minRadius),julia_to_cpp(maxRadius)))
end
HoughCircles(image::UMat, method::Int32, dp::Float64, minDist::Float64, circles::UMat; param1::Float64 = 100, param2::Float64 = 100, minRadius::Int32 = 0, maxRadius::Int32 = 0) = HoughCircles(image, method, dp, minDist, circles, param1, param2, minRadius, maxRadius)

function putText(img::Mat, text::String, org::PoInt32, fontFace::Int32, fontScale::Float64, color::Scalar, thickness::Int32, lineType::Int32, bottomLeftOrigin::Bool)
	return cpp_to_julia(jlopencv_cv_putText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(bottomLeftOrigin)))
end
putText(img::Mat, text::String, org::PoInt32, fontFace::Int32, fontScale::Float64, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, bottomLeftOrigin::Bool = false) = putText(img, text, org, fontFace, fontScale, color, thickness, lineType, bottomLeftOrigin)

function putText(img::UMat, text::String, org::PoInt32, fontFace::Int32, fontScale::Float64, color::Scalar, thickness::Int32, lineType::Int32, bottomLeftOrigin::Bool)
	return cpp_to_julia(jlopencv_cv_putText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(bottomLeftOrigin)))
end
putText(img::UMat, text::String, org::PoInt32, fontFace::Int32, fontScale::Float64, color::Scalar; thickness::Int32 = 1, lineType::Int32 = LINE_8, bottomLeftOrigin::Bool = false) = putText(img, text, org, fontFace, fontScale, color, thickness, lineType, bottomLeftOrigin)

function perspectiveTransform(src::Mat, m::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_perspectiveTransform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
perspectiveTransform(src::Mat, m::Mat, dst::Mat; ) = perspectiveTransform(src, m, dst)

function perspectiveTransform(src::UMat, m::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_perspectiveTransform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
perspectiveTransform(src::UMat, m::UMat, dst::UMat; ) = perspectiveTransform(src, m, dst)

function solveCubic(coeffs::Mat, roots::Mat)
	return cpp_to_julia(jlopencv_cv_solveCubic(julia_to_cpp(coeffs),julia_to_cpp(roots)))
end
solveCubic(coeffs::Mat, roots::Mat; ) = solveCubic(coeffs, roots)

function solveCubic(coeffs::UMat, roots::UMat)
	return cpp_to_julia(jlopencv_cv_solveCubic(julia_to_cpp(coeffs),julia_to_cpp(roots)))
end
solveCubic(coeffs::UMat, roots::UMat; ) = solveCubic(coeffs, roots)

function Sobel(src::Mat, ddepth::Int32, dx::Int32, dy::Int32, dst::Mat, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_Sobel(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Sobel(src::Mat, ddepth::Int32, dx::Int32, dy::Int32, dst::Mat; ksize::Int32 = 3, scale::Float64 = 1, delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = Sobel(src, ddepth, dx, dy, dst, ksize, scale, delta, borderType)

function Sobel(src::UMat, ddepth::Int32, dx::Int32, dy::Int32, dst::UMat, ksize::Int32, scale::Float64, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_Sobel(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Sobel(src::UMat, ddepth::Int32, dx::Int32, dy::Int32, dst::UMat; ksize::Int32 = 3, scale::Float64 = 1, delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = Sobel(src, ddepth, dx, dy, dst, ksize, scale, delta, borderType)

function estimateAffine3D(src::Mat, dst::Mat, out::Mat, inliers::Mat, ransacThreshold::Float64, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_estimateAffine3D(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(out),julia_to_cpp(inliers),julia_to_cpp(ransacThreshold),julia_to_cpp(confidence)))
end
estimateAffine3D(src::Mat, dst::Mat, out::Mat, inliers::Mat; ransacThreshold::Float64 = 3, confidence::Float64 = 0.99) = estimateAffine3D(src, dst, out, inliers, ransacThreshold, confidence)

function estimateAffine3D(src::UMat, dst::UMat, out::UMat, inliers::UMat, ransacThreshold::Float64, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_estimateAffine3D(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(out),julia_to_cpp(inliers),julia_to_cpp(ransacThreshold),julia_to_cpp(confidence)))
end
estimateAffine3D(src::UMat, dst::UMat, out::UMat, inliers::UMat; ransacThreshold::Float64 = 3, confidence::Float64 = 0.99) = estimateAffine3D(src, dst, out, inliers, ransacThreshold, confidence)

function composeRT(rvec1::Mat, tvec1::Mat, rvec2::Mat, tvec2::Mat, rvec3::Mat, tvec3::Mat, dr3dr1::Mat, dr3dt1::Mat, dr3dr2::Mat, dr3dt2::Mat, dt3dr1::Mat, dt3dt1::Mat, dt3dr2::Mat, dt3dt2::Mat)
	return cpp_to_julia(jlopencv_cv_composeRT(julia_to_cpp(rvec1),julia_to_cpp(tvec1),julia_to_cpp(rvec2),julia_to_cpp(tvec2),julia_to_cpp(rvec3),julia_to_cpp(tvec3),julia_to_cpp(dr3dr1),julia_to_cpp(dr3dt1),julia_to_cpp(dr3dr2),julia_to_cpp(dr3dt2),julia_to_cpp(dt3dr1),julia_to_cpp(dt3dt1),julia_to_cpp(dt3dr2),julia_to_cpp(dt3dt2)))
end
composeRT(rvec1::Mat, tvec1::Mat, rvec2::Mat, tvec2::Mat, rvec3::Mat, tvec3::Mat, dr3dr1::Mat, dr3dt1::Mat, dr3dr2::Mat, dr3dt2::Mat, dt3dr1::Mat, dt3dt1::Mat, dt3dr2::Mat, dt3dt2::Mat; ) = composeRT(rvec1, tvec1, rvec2, tvec2, rvec3, tvec3, dr3dr1, dr3dt1, dr3dr2, dr3dt2, dt3dr1, dt3dt1, dt3dr2, dt3dt2)

function composeRT(rvec1::UMat, tvec1::UMat, rvec2::UMat, tvec2::UMat, rvec3::UMat, tvec3::UMat, dr3dr1::UMat, dr3dt1::UMat, dr3dr2::UMat, dr3dt2::UMat, dt3dr1::UMat, dt3dt1::UMat, dt3dr2::UMat, dt3dt2::UMat)
	return cpp_to_julia(jlopencv_cv_composeRT(julia_to_cpp(rvec1),julia_to_cpp(tvec1),julia_to_cpp(rvec2),julia_to_cpp(tvec2),julia_to_cpp(rvec3),julia_to_cpp(tvec3),julia_to_cpp(dr3dr1),julia_to_cpp(dr3dt1),julia_to_cpp(dr3dr2),julia_to_cpp(dr3dt2),julia_to_cpp(dt3dr1),julia_to_cpp(dt3dt1),julia_to_cpp(dt3dr2),julia_to_cpp(dt3dt2)))
end
composeRT(rvec1::UMat, tvec1::UMat, rvec2::UMat, tvec2::UMat, rvec3::UMat, tvec3::UMat, dr3dr1::UMat, dr3dt1::UMat, dr3dr2::UMat, dr3dt2::UMat, dt3dr1::UMat, dt3dt1::UMat, dt3dr2::UMat, dt3dt2::UMat; ) = composeRT(rvec1, tvec1, rvec2, tvec2, rvec3, tvec3, dr3dr1, dr3dt1, dr3dr2, dr3dt2, dt3dr1, dt3dt1, dt3dr2, dt3dt2)

function initCameraMatrix2D(objectPoints::vector{Mat}, imagePoints::vector{Mat}, imageSize::Size, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_initCameraMatrix2D(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(aspectRatio)))
end
initCameraMatrix2D(objectPoints::vector{Mat}, imagePoints::vector{Mat}, imageSize::Size; aspectRatio::Float64 = 1.0) = initCameraMatrix2D(objectPoints, imagePoints, imageSize, aspectRatio)

function initCameraMatrix2D(objectPoints::vector{UMat}, imagePoints::vector{UMat}, imageSize::Size, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_initCameraMatrix2D(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(aspectRatio)))
end
initCameraMatrix2D(objectPoints::vector{UMat}, imagePoints::vector{UMat}, imageSize::Size; aspectRatio::Float64 = 1.0) = initCameraMatrix2D(objectPoints, imagePoints, imageSize, aspectRatio)

function findHomography(srcPoints::Mat, dstPoints::Mat, method::Int32, ransacReprojThreshold::Float64, mask::Mat, maxIters::Int32, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_findHomography(julia_to_cpp(srcPoints),julia_to_cpp(dstPoints),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(mask),julia_to_cpp(maxIters),julia_to_cpp(confidence)))
end
findHomography(srcPoints::Mat, dstPoints::Mat, method::Int32; method::Int32 = 0, ransacReprojThreshold::Float64 = 3, maxIters::Int32 = 2000, confidence::Float64 = 0.995) = findHomography(srcPoints, dstPoints, method, ransacReprojThreshold, mask, maxIters, confidence)

function findHomography(srcPoints::UMat, dstPoints::UMat, method::Int32, ransacReprojThreshold::Float64, mask::UMat, maxIters::Int32, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_findHomography(julia_to_cpp(srcPoints),julia_to_cpp(dstPoints),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(mask),julia_to_cpp(maxIters),julia_to_cpp(confidence)))
end
findHomography(srcPoints::UMat, dstPoints::UMat, method::Int32; method::Int32 = 0, ransacReprojThreshold::Float64 = 3, maxIters::Int32 = 2000, confidence::Float64 = 0.995) = findHomography(srcPoints, dstPoints, method, ransacReprojThreshold, mask, maxIters, confidence)

function compareHist(H1::Mat, H2::Mat, method::Int32)
	return cpp_to_julia(jlopencv_cv_compareHist(julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(method)))
end
compareHist(H1::Mat, H2::Mat, method::Int32; ) = compareHist(H1, H2, method)

function compareHist(H1::UMat, H2::UMat, method::Int32)
	return cpp_to_julia(jlopencv_cv_compareHist(julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(method)))
end
compareHist(H1::UMat, H2::UMat, method::Int32; ) = compareHist(H1, H2, method)

function solvePnPRefineLM(objectPoints::Mat, imagePoints::Mat, cameraMatrix::Mat, distCoeffs::Mat, rvec::Mat, tvec::Mat, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_solvePnPRefineLM(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria)))
end
solvePnPRefineLM(objectPoints::Mat, imagePoints::Mat, cameraMatrix::Mat, distCoeffs::Mat, rvec::Mat, tvec::Mat; criteria::TermCriteria = TermCriteria(TermCriteria::EPS + TermCriteria::COUNT, 20, FLT_EPSILON)) = solvePnPRefineLM(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria)

function solvePnPRefineLM(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_solvePnPRefineLM(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria)))
end
solvePnPRefineLM(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat; criteria::TermCriteria = TermCriteria(TermCriteria::EPS + TermCriteria::COUNT, 20, FLT_EPSILON)) = solvePnPRefineLM(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria)

function HOGDescriptor_getDefaultPeopleDetector()
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_getDefaultPeopleDetector())
end
HOGDescriptor_getDefaultPeopleDetector(; ) = HOGDescriptor_getDefaultPeopleDetector()

function flip(src::Mat, flipCode::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_flip(julia_to_cpp(src),julia_to_cpp(flipCode),julia_to_cpp(dst)))
end
flip(src::Mat, flipCode::Int32, dst::Mat; ) = flip(src, flipCode, dst)

function flip(src::UMat, flipCode::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_flip(julia_to_cpp(src),julia_to_cpp(flipCode),julia_to_cpp(dst)))
end
flip(src::UMat, flipCode::Int32, dst::UMat; ) = flip(src, flipCode, dst)

function demosaicing(src::Mat, code::Int32, dst::Mat, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_demosaicing(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
demosaicing(src::Mat, code::Int32, dst::Mat; dstCn::Int32 = 0) = demosaicing(src, code, dst, dstCn)

function demosaicing(src::UMat, code::Int32, dst::UMat, dstCn::Int32)
	return cpp_to_julia(jlopencv_cv_demosaicing(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
demosaicing(src::UMat, code::Int32, dst::UMat; dstCn::Int32 = 0) = demosaicing(src, code, dst, dstCn)

function getOptimalDFTSize(vecsize::Int32)
	return cpp_to_julia(jlopencv_cv_getOptimalDFTSize(julia_to_cpp(vecsize)))
end
getOptimalDFTSize(vecsize::Int32; ) = getOptimalDFTSize(vecsize)

function HoughLinesPointSet(_point::Mat, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64, _lines::Mat)
	return cpp_to_julia(jlopencv_cv_HoughLinesPointSet(julia_to_cpp(_point),julia_to_cpp(lines_max),julia_to_cpp(threshold),julia_to_cpp(min_rho),julia_to_cpp(max_rho),julia_to_cpp(rho_step),julia_to_cpp(min_theta),julia_to_cpp(max_theta),julia_to_cpp(theta_step),julia_to_cpp(_lines)))
end
HoughLinesPointSet(_point::Mat, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64, _lines::Mat; ) = HoughLinesPointSet(_point, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step, _lines)

function HoughLinesPointSet(_point::UMat, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64, _lines::UMat)
	return cpp_to_julia(jlopencv_cv_HoughLinesPointSet(julia_to_cpp(_point),julia_to_cpp(lines_max),julia_to_cpp(threshold),julia_to_cpp(min_rho),julia_to_cpp(max_rho),julia_to_cpp(rho_step),julia_to_cpp(min_theta),julia_to_cpp(max_theta),julia_to_cpp(theta_step),julia_to_cpp(_lines)))
end
HoughLinesPointSet(_point::UMat, lines_max::Int32, threshold::Int32, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64, _lines::UMat; ) = HoughLinesPointSet(_point, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step, _lines)

function matchShapes(contour1::Mat, contour2::Mat, method::Int32, parameter::Float64)
	return cpp_to_julia(jlopencv_cv_matchShapes(julia_to_cpp(contour1),julia_to_cpp(contour2),julia_to_cpp(method),julia_to_cpp(parameter)))
end
matchShapes(contour1::Mat, contour2::Mat, method::Int32, parameter::Float64; ) = matchShapes(contour1, contour2, method, parameter)

function matchShapes(contour1::UMat, contour2::UMat, method::Int32, parameter::Float64)
	return cpp_to_julia(jlopencv_cv_matchShapes(julia_to_cpp(contour1),julia_to_cpp(contour2),julia_to_cpp(method),julia_to_cpp(parameter)))
end
matchShapes(contour1::UMat, contour2::UMat, method::Int32, parameter::Float64; ) = matchShapes(contour1, contour2, method, parameter)

function spatialGradient(src::Mat, dx::Mat, dy::Mat, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_spatialGradient(julia_to_cpp(src),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
spatialGradient(src::Mat, dx::Mat, dy::Mat; ksize::Int32 = 3, borderType::Int32 = BORDER_DEFAULT) = spatialGradient(src, dx, dy, ksize, borderType)

function spatialGradient(src::UMat, dx::UMat, dy::UMat, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_spatialGradient(julia_to_cpp(src),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
spatialGradient(src::UMat, dx::UMat, dy::UMat; ksize::Int32 = 3, borderType::Int32 = BORDER_DEFAULT) = spatialGradient(src, dx, dy, ksize, borderType)

function accumulateProduct(src1::Mat, src2::Mat, dst::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_accumulateProduct(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateProduct(src1::Mat, src2::Mat, dst::Mat; mask::Mat = Mat()) = accumulateProduct(src1, src2, dst, mask)

function accumulateProduct(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_accumulateProduct(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateProduct(src1::UMat, src2::UMat, dst::UMat; mask::UMat = UMat()) = accumulateProduct(src1, src2, dst, mask)

function getTextSize(text::String, fontFace::Int32, fontScale::Float64, thickness::Int32)
	return cpp_to_julia(jlopencv_cv_getTextSize(julia_to_cpp(text),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(thickness)))
end
getTextSize(text::String, fontFace::Int32, fontScale::Float64, thickness::Int32; ) = getTextSize(text, fontFace, fontScale, thickness)

function distanceTransformWithLabels(src::Mat, distanceType::Int32, maskSize::Int32, dst::Mat, labels::Mat, labelType::Int32)
	return cpp_to_julia(jlopencv_cv_distanceTransformWithLabels(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(labels),julia_to_cpp(labelType)))
end
distanceTransformWithLabels(src::Mat, distanceType::Int32, maskSize::Int32, dst::Mat, labels::Mat; labelType::Int32 = DIST_LABEL_CCOMP) = distanceTransformWithLabels(src, distanceType, maskSize, dst, labels, labelType)

function distanceTransformWithLabels(src::UMat, distanceType::Int32, maskSize::Int32, dst::UMat, labels::UMat, labelType::Int32)
	return cpp_to_julia(jlopencv_cv_distanceTransformWithLabels(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(labels),julia_to_cpp(labelType)))
end
distanceTransformWithLabels(src::UMat, distanceType::Int32, maskSize::Int32, dst::UMat, labels::UMat; labelType::Int32 = DIST_LABEL_CCOMP) = distanceTransformWithLabels(src, distanceType, maskSize, dst, labels, labelType)

function compare(src1::Mat, src2::Mat, cmpop::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_compare(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(cmpop),julia_to_cpp(dst)))
end
compare(src1::Mat, src2::Mat, cmpop::Int32, dst::Mat; ) = compare(src1, src2, cmpop, dst)

function compare(src1::UMat, src2::UMat, cmpop::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_compare(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(cmpop),julia_to_cpp(dst)))
end
compare(src1::UMat, src2::UMat, cmpop::Int32, dst::UMat; ) = compare(src1, src2, cmpop, dst)

function readOpticalFlow(path::String)
	return cpp_to_julia(jlopencv_cv_readOpticalFlow(julia_to_cpp(path)))
end
readOpticalFlow(path::String; ) = readOpticalFlow(path)

function convexHull(points::Mat, hull::Mat, clockwise::Bool, returnPoints::Bool)
	return cpp_to_julia(jlopencv_cv_convexHull(julia_to_cpp(points),julia_to_cpp(hull),julia_to_cpp(clockwise),julia_to_cpp(returnPoints)))
end
convexHull(points::Mat, hull::Mat; clockwise::Bool = false, returnPoints::Bool = true) = convexHull(points, hull, clockwise, returnPoints)

function convexHull(points::UMat, hull::UMat, clockwise::Bool, returnPoints::Bool)
	return cpp_to_julia(jlopencv_cv_convexHull(julia_to_cpp(points),julia_to_cpp(hull),julia_to_cpp(clockwise),julia_to_cpp(returnPoints)))
end
convexHull(points::UMat, hull::UMat; clockwise::Bool = false, returnPoints::Bool = true) = convexHull(points, hull, clockwise, returnPoints)

function fillPoly(img::Mat, pts::vector{Mat}, color::Scalar, lineType::Int32, shift::Int32, offset::PoInt32)
	return cpp_to_julia(jlopencv_cv_fillPoly(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift),julia_to_cpp(offset)))
end
fillPoly(img::Mat, pts::vector{Mat}, color::Scalar; lineType::Int32 = LINE_8, shift::Int32 = 0, offset::PoInt32 = Point()) = fillPoly(img, pts, color, lineType, shift, offset)

function fillPoly(img::UMat, pts::vector{UMat}, color::Scalar, lineType::Int32, shift::Int32, offset::PoInt32)
	return cpp_to_julia(jlopencv_cv_fillPoly(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift),julia_to_cpp(offset)))
end
fillPoly(img::UMat, pts::vector{UMat}, color::Scalar; lineType::Int32 = LINE_8, shift::Int32 = 0, offset::PoInt32 = Point()) = fillPoly(img, pts, color, lineType, shift, offset)

function filterHomographyDecompByVisibleRefpoints(rotations::vector{Mat}, normals::vector{Mat}, beforePoints::Mat, afterPoints::Mat, possibleSolutions::Mat, pointsMask::Mat)
	return cpp_to_julia(jlopencv_cv_filterHomographyDecompByVisibleRefpoints(julia_to_cpp(rotations),julia_to_cpp(normals),julia_to_cpp(beforePoints),julia_to_cpp(afterPoints),julia_to_cpp(possibleSolutions),julia_to_cpp(pointsMask)))
end
filterHomographyDecompByVisibleRefpoints(rotations::vector{Mat}, normals::vector{Mat}, beforePoints::Mat, afterPoints::Mat, possibleSolutions::Mat; pointsMask::Mat = Mat()) = filterHomographyDecompByVisibleRefpoints(rotations, normals, beforePoints, afterPoints, possibleSolutions, pointsMask)

function filterHomographyDecompByVisibleRefpoints(rotations::vector{UMat}, normals::vector{UMat}, beforePoints::UMat, afterPoints::UMat, possibleSolutions::UMat, pointsMask::UMat)
	return cpp_to_julia(jlopencv_cv_filterHomographyDecompByVisibleRefpoints(julia_to_cpp(rotations),julia_to_cpp(normals),julia_to_cpp(beforePoints),julia_to_cpp(afterPoints),julia_to_cpp(possibleSolutions),julia_to_cpp(pointsMask)))
end
filterHomographyDecompByVisibleRefpoints(rotations::vector{UMat}, normals::vector{UMat}, beforePoints::UMat, afterPoints::UMat, possibleSolutions::UMat; pointsMask::UMat = UMat()) = filterHomographyDecompByVisibleRefpoints(rotations, normals, beforePoints, afterPoints, possibleSolutions, pointsMask)

function randShuffle(dst::Mat, iterFactor::Float64)
	return cpp_to_julia(jlopencv_cv_randShuffle(julia_to_cpp(dst),julia_to_cpp(iterFactor)))
end
randShuffle(dst::Mat; iterFactor::Float64 = 1.) = randShuffle(dst, iterFactor)

function randShuffle(dst::UMat, iterFactor::Float64)
	return cpp_to_julia(jlopencv_cv_randShuffle(julia_to_cpp(dst),julia_to_cpp(iterFactor)))
end
randShuffle(dst::UMat; iterFactor::Float64 = 1.) = randShuffle(dst, iterFactor)

function boxPoints(box::RotatedRect, points::Mat)
	return cpp_to_julia(jlopencv_cv_boxPoints(julia_to_cpp(box),julia_to_cpp(points)))
end
boxPoints(box::RotatedRect, points::Mat; ) = boxPoints(box, points)

function boxPoints(box::RotatedRect, points::UMat)
	return cpp_to_julia(jlopencv_cv_boxPoints(julia_to_cpp(box),julia_to_cpp(points)))
end
boxPoints(box::RotatedRect, points::UMat; ) = boxPoints(box, points)

function convertFp16(src::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_convertFp16(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertFp16(src::Mat, dst::Mat; ) = convertFp16(src, dst)

function convertFp16(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_convertFp16(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertFp16(src::UMat, dst::UMat; ) = convertFp16(src, dst)

function createLineSegmentDetector(_refine::Int32, _scale::Float64, _sigma_scale::Float64, _quant::Float64, _ang_th::Float64, _log_eps::Float64, _density_th::Float64, _n_bins::Int32)
	return cpp_to_julia(jlopencv_cv_createLineSegmentDetector(julia_to_cpp(_refine),julia_to_cpp(_scale),julia_to_cpp(_sigma_scale),julia_to_cpp(_quant),julia_to_cpp(_ang_th),julia_to_cpp(_log_eps),julia_to_cpp(_density_th),julia_to_cpp(_n_bins)))
end
createLineSegmentDetector(; _refine::Int32 = LSD_REFINE_STD, _scale::Float64 = 0.8, _sigma_scale::Float64 = 0.6, _quant::Float64 = 2.0, _ang_th::Float64 = 22.5, _log_eps::Float64 = 0, _density_th::Float64 = 0.7, _n_bins::Int32 = 1024) = createLineSegmentDetector(_refine, _scale, _sigma_scale, _quant, _ang_th, _log_eps, _density_th, _n_bins)

function getGaussianKernel(ksize::Int32, sigma::Float64, ktype::Int32)
	return cpp_to_julia(jlopencv_cv_getGaussianKernel(julia_to_cpp(ksize),julia_to_cpp(sigma),julia_to_cpp(ktype)))
end
getGaussianKernel(ksize::Int32, sigma::Float64; ktype::Int32 = CV_64F) = getGaussianKernel(ksize, sigma, ktype)

function imwrite(filename::String, img::Mat, params::vector{Int32})
	return cpp_to_julia(jlopencv_cv_imwrite(julia_to_cpp(filename),julia_to_cpp(img),julia_to_cpp(params)))
end
imwrite(filename::String, img::Mat; params::vector{Int32} = std::vector<int>()) = imwrite(filename, img, params)

function imwrite(filename::String, img::UMat, params::vector{Int32})
	return cpp_to_julia(jlopencv_cv_imwrite(julia_to_cpp(filename),julia_to_cpp(img),julia_to_cpp(params)))
end
imwrite(filename::String, img::UMat; params::vector{Int32} = std::vector<int>()) = imwrite(filename, img, params)

function drawMarker(img::Mat, position::PoInt32, color::Scalar, markerType::Int32, markerSize::Int32, thickness::Int32, line_type::Int32)
	return cpp_to_julia(jlopencv_cv_drawMarker(julia_to_cpp(img),julia_to_cpp(position),julia_to_cpp(color),julia_to_cpp(markerType),julia_to_cpp(markerSize),julia_to_cpp(thickness),julia_to_cpp(line_type)))
end
drawMarker(img::Mat, position::PoInt32, color::Scalar; markerType::Int32 = MARKER_CROSS, markerSize::Int32 = 20, thickness::Int32 = 1, line_type::Int32 = 8) = drawMarker(img, position, color, markerType, markerSize, thickness, line_type)

function drawMarker(img::UMat, position::PoInt32, color::Scalar, markerType::Int32, markerSize::Int32, thickness::Int32, line_type::Int32)
	return cpp_to_julia(jlopencv_cv_drawMarker(julia_to_cpp(img),julia_to_cpp(position),julia_to_cpp(color),julia_to_cpp(markerType),julia_to_cpp(markerSize),julia_to_cpp(thickness),julia_to_cpp(line_type)))
end
drawMarker(img::UMat, position::PoInt32, color::Scalar; markerType::Int32 = MARKER_CROSS, markerSize::Int32 = 20, thickness::Int32 = 1, line_type::Int32 = 8) = drawMarker(img, position, color, markerType, markerSize, thickness, line_type)

function PCAProject(data::Mat, mean::Mat, eigenvectors::Mat, result::Mat)
	return cpp_to_julia(jlopencv_cv_PCAProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCAProject(data::Mat, mean::Mat, eigenvectors::Mat, result::Mat; ) = PCAProject(data, mean, eigenvectors, result)

function PCAProject(data::UMat, mean::UMat, eigenvectors::UMat, result::UMat)
	return cpp_to_julia(jlopencv_cv_PCAProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCAProject(data::UMat, mean::UMat, eigenvectors::UMat, result::UMat; ) = PCAProject(data, mean, eigenvectors, result)

function getRectSubPix(image::Mat, patchSize::Size, center::PoInt322f, patch::Mat, patchType::Int32)
	return cpp_to_julia(jlopencv_cv_getRectSubPix(julia_to_cpp(image),julia_to_cpp(patchSize),julia_to_cpp(center),julia_to_cpp(patch),julia_to_cpp(patchType)))
end
getRectSubPix(image::Mat, patchSize::Size, center::PoInt322f, patch::Mat; patchType::Int32 = -1) = getRectSubPix(image, patchSize, center, patch, patchType)

function getRectSubPix(image::UMat, patchSize::Size, center::PoInt322f, patch::UMat, patchType::Int32)
	return cpp_to_julia(jlopencv_cv_getRectSubPix(julia_to_cpp(image),julia_to_cpp(patchSize),julia_to_cpp(center),julia_to_cpp(patch),julia_to_cpp(patchType)))
end
getRectSubPix(image::UMat, patchSize::Size, center::PoInt322f, patch::UMat; patchType::Int32 = -1) = getRectSubPix(image, patchSize, center, patch, patchType)

function groupRectangles(rectList::vector{Rect}, groupThreshold::Int32, eps::Float64)
	return cpp_to_julia(jlopencv_cv_groupRectangles(julia_to_cpp(rectList),julia_to_cpp(groupThreshold),julia_to_cpp(eps)))
end
groupRectangles(rectList::vector{Rect}, groupThreshold::Int32; eps::Float64 = 0.2) = groupRectangles(rectList, groupThreshold, eps)

function cornerHarris(src::Mat, blockSize::Int32, ksize::Int32, k::Float64, dst::Mat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cornerHarris(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(k),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerHarris(src::Mat, blockSize::Int32, ksize::Int32, k::Float64, dst::Mat; borderType::Int32 = BORDER_DEFAULT) = cornerHarris(src, blockSize, ksize, k, dst, borderType)

function cornerHarris(src::UMat, blockSize::Int32, ksize::Int32, k::Float64, dst::UMat, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cornerHarris(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(k),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerHarris(src::UMat, blockSize::Int32, ksize::Int32, k::Float64, dst::UMat; borderType::Int32 = BORDER_DEFAULT) = cornerHarris(src, blockSize, ksize, k, dst, borderType)

function scaleAdd(src1::Mat, alpha::Float64, src2::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_scaleAdd(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(dst)))
end
scaleAdd(src1::Mat, alpha::Float64, src2::Mat, dst::Mat; ) = scaleAdd(src1, alpha, src2, dst)

function scaleAdd(src1::UMat, alpha::Float64, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_scaleAdd(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(dst)))
end
scaleAdd(src1::UMat, alpha::Float64, src2::UMat, dst::UMat; ) = scaleAdd(src1, alpha, src2, dst)

function decomposeHomographyMat(H::Mat, K::Mat)
	return cpp_to_julia(jlopencv_cv_decomposeHomographyMat(julia_to_cpp(H),julia_to_cpp(K)))
end
decomposeHomographyMat(H::Mat, K::Mat; ) = decomposeHomographyMat(H, K)

function decomposeHomographyMat(H::UMat, K::UMat)
	return cpp_to_julia(jlopencv_cv_decomposeHomographyMat(julia_to_cpp(H),julia_to_cpp(K)))
end
decomposeHomographyMat(H::UMat, K::UMat; ) = decomposeHomographyMat(H, K)

function normalize(src::Mat, dst::Mat, alpha::Float64, beta::Float64, norm_type::Int32, dtype::Int32, mask::Mat)
	return cpp_to_julia(jlopencv_cv_normalize(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta),julia_to_cpp(norm_type),julia_to_cpp(dtype),julia_to_cpp(mask)))
end
normalize(src::Mat, dst::Mat; alpha::Float64 = 1, beta::Float64 = 0, norm_type::Int32 = NORM_L2, dtype::Int32 = -1, mask::Mat = Mat()) = normalize(src, dst, alpha, beta, norm_type, dtype, mask)

function normalize(src::UMat, dst::UMat, alpha::Float64, beta::Float64, norm_type::Int32, dtype::Int32, mask::UMat)
	return cpp_to_julia(jlopencv_cv_normalize(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta),julia_to_cpp(norm_type),julia_to_cpp(dtype),julia_to_cpp(mask)))
end
normalize(src::UMat, dst::UMat; alpha::Float64 = 1, beta::Float64 = 0, norm_type::Int32 = NORM_L2, dtype::Int32 = -1, mask::UMat = UMat()) = normalize(src, dst, alpha, beta, norm_type, dtype, mask)

function calibrateCameraRO(objectPoints::vector{Mat}, imagePoints::vector{Mat}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::Mat, distCoeffs::Mat, newObjPoints::Mat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(newObjPoints),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraRO(objectPoints::vector{Mat}, imagePoints::vector{Mat}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::Mat, distCoeffs::Mat, newObjPoints::Mat; flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCameraRO(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, newObjPoints, flags, criteria)

function calibrateCameraRO(objectPoints::vector{UMat}, imagePoints::vector{UMat}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::UMat, distCoeffs::UMat, newObjPoints::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(newObjPoints),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraRO(objectPoints::vector{UMat}, imagePoints::vector{UMat}, imageSize::Size, iFixedPoint::Int32, cameraMatrix::UMat, distCoeffs::UMat, newObjPoints::UMat; flags::Int32 = 0, criteria::TermCriteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON)) = calibrateCameraRO(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, newObjPoints, flags, criteria)

function getStructuringElement(shape::Int32, ksize::Size, anchor::PoInt32)
	return cpp_to_julia(jlopencv_cv_getStructuringElement(julia_to_cpp(shape),julia_to_cpp(ksize),julia_to_cpp(anchor)))
end
getStructuringElement(shape::Int32, ksize::Size; anchor::PoInt32 = Point(-1,-1)) = getStructuringElement(shape, ksize, anchor)

function min(src1::Mat, src2::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_min(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
min(src1::Mat, src2::Mat, dst::Mat; ) = min(src1, src2, dst)

function min(src1::UMat, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_min(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
min(src1::UMat, src2::UMat, dst::UMat; ) = min(src1, src2, dst)

function solvePnPRefineVVS(objectPoints::Mat, imagePoints::Mat, cameraMatrix::Mat, distCoeffs::Mat, rvec::Mat, tvec::Mat, criteria::TermCriteria, VVSlambda::Float64)
	return cpp_to_julia(jlopencv_cv_solvePnPRefineVVS(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria),julia_to_cpp(VVSlambda)))
end
solvePnPRefineVVS(objectPoints::Mat, imagePoints::Mat, cameraMatrix::Mat, distCoeffs::Mat, rvec::Mat, tvec::Mat; criteria::TermCriteria = TermCriteria(TermCriteria::EPS + TermCriteria::COUNT, 20, FLT_EPSILON), VVSlambda::Float64 = 1) = solvePnPRefineVVS(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria, VVSlambda)

function solvePnPRefineVVS(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat, criteria::TermCriteria, VVSlambda::Float64)
	return cpp_to_julia(jlopencv_cv_solvePnPRefineVVS(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria),julia_to_cpp(VVSlambda)))
end
solvePnPRefineVVS(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, rvec::UMat, tvec::UMat; criteria::TermCriteria = TermCriteria(TermCriteria::EPS + TermCriteria::COUNT, 20, FLT_EPSILON), VVSlambda::Float64 = 1) = solvePnPRefineVVS(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria, VVSlambda)

function HoughLinesP(image::Mat, rho::Float64, theta::Float64, threshold::Int32, lines::Mat, minLineLength::Float64, maxLineGap::Float64)
	return cpp_to_julia(jlopencv_cv_HoughLinesP(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(minLineLength),julia_to_cpp(maxLineGap)))
end
HoughLinesP(image::Mat, rho::Float64, theta::Float64, threshold::Int32, lines::Mat; minLineLength::Float64 = 0, maxLineGap::Float64 = 0) = HoughLinesP(image, rho, theta, threshold, lines, minLineLength, maxLineGap)

function HoughLinesP(image::UMat, rho::Float64, theta::Float64, threshold::Int32, lines::UMat, minLineLength::Float64, maxLineGap::Float64)
	return cpp_to_julia(jlopencv_cv_HoughLinesP(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(minLineLength),julia_to_cpp(maxLineGap)))
end
HoughLinesP(image::UMat, rho::Float64, theta::Float64, threshold::Int32, lines::UMat; minLineLength::Float64 = 0, maxLineGap::Float64 = 0) = HoughLinesP(image, rho, theta, threshold, lines, minLineLength, maxLineGap)

function warpPolar(src::Mat, dsize::Size, center::PoInt322f, maxRadius::Float64, flags::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_warpPolar(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
warpPolar(src::Mat, dsize::Size, center::PoInt322f, maxRadius::Float64, flags::Int32, dst::Mat; ) = warpPolar(src, dsize, center, maxRadius, flags, dst)

function warpPolar(src::UMat, dsize::Size, center::PoInt322f, maxRadius::Float64, flags::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_warpPolar(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
warpPolar(src::UMat, dsize::Size, center::PoInt322f, maxRadius::Float64, flags::Int32, dst::UMat; ) = warpPolar(src, dsize, center, maxRadius, flags, dst)

function convexityDefects(contour::Mat, convexhull::Mat, convexityDefects::Mat)
	return cpp_to_julia(jlopencv_cv_convexityDefects(julia_to_cpp(contour),julia_to_cpp(convexhull),julia_to_cpp(convexityDefects)))
end
convexityDefects(contour::Mat, convexhull::Mat, convexityDefects::Mat; ) = convexityDefects(contour, convexhull, convexityDefects)

function convexityDefects(contour::UMat, convexhull::UMat, convexityDefects::UMat)
	return cpp_to_julia(jlopencv_cv_convexityDefects(julia_to_cpp(contour),julia_to_cpp(convexhull),julia_to_cpp(convexityDefects)))
end
convexityDefects(contour::UMat, convexhull::UMat, convexityDefects::UMat; ) = convexityDefects(contour, convexhull, convexityDefects)

function getWindowProperty(winname::String, prop_id::Int32)
	return cpp_to_julia(jlopencv_cv_getWindowProperty(julia_to_cpp(winname),julia_to_cpp(prop_id)))
end
getWindowProperty(winname::String, prop_id::Int32; ) = getWindowProperty(winname, prop_id)

function sqrt(src::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_sqrt(julia_to_cpp(src),julia_to_cpp(dst)))
end
sqrt(src::Mat, dst::Mat; ) = sqrt(src, dst)

function sqrt(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_sqrt(julia_to_cpp(src),julia_to_cpp(dst)))
end
sqrt(src::UMat, dst::UMat; ) = sqrt(src, dst)

function validateDisparity(disparity::Mat, cost::Mat, minDisparity::Int32, numberOfDisparities::Int32, disp12MaxDisp::Int32)
	return cpp_to_julia(jlopencv_cv_validateDisparity(julia_to_cpp(disparity),julia_to_cpp(cost),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(disp12MaxDisp)))
end
validateDisparity(disparity::Mat, cost::Mat, minDisparity::Int32, numberOfDisparities::Int32; disp12MaxDisp::Int32 = 1) = validateDisparity(disparity, cost, minDisparity, numberOfDisparities, disp12MaxDisp)

function validateDisparity(disparity::UMat, cost::UMat, minDisparity::Int32, numberOfDisparities::Int32, disp12MaxDisp::Int32)
	return cpp_to_julia(jlopencv_cv_validateDisparity(julia_to_cpp(disparity),julia_to_cpp(cost),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(disp12MaxDisp)))
end
validateDisparity(disparity::UMat, cost::UMat, minDisparity::Int32, numberOfDisparities::Int32; disp12MaxDisp::Int32 = 1) = validateDisparity(disparity, cost, minDisparity, numberOfDisparities, disp12MaxDisp)

function findContours(image::Mat, mode::Int32, method::Int32, hierarchy::Mat, offset::PoInt32)
	return cpp_to_julia(jlopencv_cv_findContours(julia_to_cpp(image),julia_to_cpp(mode),julia_to_cpp(method),julia_to_cpp(hierarchy),julia_to_cpp(offset)))
end
findContours(image::Mat, mode::Int32, method::Int32, hierarchy::Mat; offset::PoInt32 = Point()) = findContours(image, mode, method, hierarchy, offset)

function findContours(image::UMat, mode::Int32, method::Int32, hierarchy::UMat, offset::PoInt32)
	return cpp_to_julia(jlopencv_cv_findContours(julia_to_cpp(image),julia_to_cpp(mode),julia_to_cpp(method),julia_to_cpp(hierarchy),julia_to_cpp(offset)))
end
findContours(image::UMat, mode::Int32, method::Int32, hierarchy::UMat; offset::PoInt32 = Point()) = findContours(image, mode, method, hierarchy, offset)

function eigenNonSymmetric(src::Mat, eigenvalues::Mat, eigenvectors::Mat)
	return cpp_to_julia(jlopencv_cv_eigenNonSymmetric(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigenNonSymmetric(src::Mat, eigenvalues::Mat, eigenvectors::Mat; ) = eigenNonSymmetric(src, eigenvalues, eigenvectors)

function eigenNonSymmetric(src::UMat, eigenvalues::UMat, eigenvectors::UMat)
	return cpp_to_julia(jlopencv_cv_eigenNonSymmetric(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigenNonSymmetric(src::UMat, eigenvalues::UMat, eigenvectors::UMat; ) = eigenNonSymmetric(src, eigenvalues, eigenvectors)

function split(m::Mat)
	return cpp_to_julia(jlopencv_cv_split(julia_to_cpp(m)))
end
split(m::Mat; ) = split(m)

function split(m::UMat)
	return cpp_to_julia(jlopencv_cv_split(julia_to_cpp(m)))
end
split(m::UMat; ) = split(m)

function Canny(image::Mat, threshold1::Float64, threshold2::Float64, edges::Mat, apertureSize::Int32, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_Canny(julia_to_cpp(image),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(apertureSize),julia_to_cpp(L2gradient)))
end
Canny(image::Mat, threshold1::Float64, threshold2::Float64, edges::Mat; apertureSize::Int32 = 3, L2gradient::Bool = false) = Canny(image, threshold1, threshold2, edges, apertureSize, L2gradient)

function Canny(image::UMat, threshold1::Float64, threshold2::Float64, edges::UMat, apertureSize::Int32, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_Canny(julia_to_cpp(image),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(apertureSize),julia_to_cpp(L2gradient)))
end
Canny(image::UMat, threshold1::Float64, threshold2::Float64, edges::UMat; apertureSize::Int32 = 3, L2gradient::Bool = false) = Canny(image, threshold1, threshold2, edges, apertureSize, L2gradient)

function Canny(dx::Mat, dy::Mat, threshold1::Float64, threshold2::Float64, edges::Mat, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_Canny(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(L2gradient)))
end
Canny(dx::Mat, dy::Mat, threshold1::Float64, threshold2::Float64, edges::Mat; L2gradient::Bool = false) = Canny(dx, dy, threshold1, threshold2, edges, L2gradient)

function Canny(dx::UMat, dy::UMat, threshold1::Float64, threshold2::Float64, edges::UMat, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_Canny(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(L2gradient)))
end
Canny(dx::UMat, dy::UMat, threshold1::Float64, threshold2::Float64, edges::UMat; L2gradient::Bool = false) = Canny(dx, dy, threshold1, threshold2, edges, L2gradient)

function findTransformECC(templateImage::Mat, inputImage::Mat, warpMatrix::Mat, motionType::Int32, criteria::TermCriteria, inputMask::Mat, gaussFiltSize::Int32)
	return cpp_to_julia(jlopencv_cv_findTransformECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(warpMatrix),julia_to_cpp(motionType),julia_to_cpp(criteria),julia_to_cpp(inputMask),julia_to_cpp(gaussFiltSize)))
end
findTransformECC(templateImage::Mat, inputImage::Mat, warpMatrix::Mat, motionType::Int32, criteria::TermCriteria, inputMask::Mat, gaussFiltSize::Int32; ) = findTransformECC(templateImage, inputImage, warpMatrix, motionType, criteria, inputMask, gaussFiltSize)

function findTransformECC(templateImage::UMat, inputImage::UMat, warpMatrix::UMat, motionType::Int32, criteria::TermCriteria, inputMask::UMat, gaussFiltSize::Int32)
	return cpp_to_julia(jlopencv_cv_findTransformECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(warpMatrix),julia_to_cpp(motionType),julia_to_cpp(criteria),julia_to_cpp(inputMask),julia_to_cpp(gaussFiltSize)))
end
findTransformECC(templateImage::UMat, inputImage::UMat, warpMatrix::UMat, motionType::Int32, criteria::TermCriteria, inputMask::UMat, gaussFiltSize::Int32; ) = findTransformECC(templateImage, inputImage, warpMatrix, motionType, criteria, inputMask, gaussFiltSize)

function inRange(src::Mat, lowerb::Mat, upperb::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_inRange(julia_to_cpp(src),julia_to_cpp(lowerb),julia_to_cpp(upperb),julia_to_cpp(dst)))
end
inRange(src::Mat, lowerb::Mat, upperb::Mat, dst::Mat; ) = inRange(src, lowerb, upperb, dst)

function inRange(src::UMat, lowerb::UMat, upperb::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_inRange(julia_to_cpp(src),julia_to_cpp(lowerb),julia_to_cpp(upperb),julia_to_cpp(dst)))
end
inRange(src::UMat, lowerb::UMat, upperb::UMat, dst::UMat; ) = inRange(src, lowerb, upperb, dst)

function drawMatches(img1::Mat, keypoints1::vector{KeyPoInt32}, img2::Mat, keypoints2::vector{KeyPoInt32}, matches1to2::vector{DMatch}, outImg::Mat, matchColor::Scalar, singlePointColor::Scalar, matchesMask::vector{char}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatches(img1::Mat, keypoints1::vector{KeyPoInt32}, img2::Mat, keypoints2::vector{KeyPoInt32}, matches1to2::vector{DMatch}, outImg::Mat; matchColor::Scalar = Scalar::all(-1), singlePointColor::Scalar = Scalar::all(-1), matchesMask::vector{char} = std::vector<char>(), flags::DrawMatchesFlags = DrawMatchesFlags::DEFAULT) = drawMatches(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function drawMatches(img1::UMat, keypoints1::vector{KeyPoInt32}, img2::UMat, keypoints2::vector{KeyPoInt32}, matches1to2::vector{DMatch}, outImg::UMat, matchColor::Scalar, singlePointColor::Scalar, matchesMask::vector{char}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatches(img1::UMat, keypoints1::vector{KeyPoInt32}, img2::UMat, keypoints2::vector{KeyPoInt32}, matches1to2::vector{DMatch}, outImg::UMat; matchColor::Scalar = Scalar::all(-1), singlePointColor::Scalar = Scalar::all(-1), matchesMask::vector{char} = std::vector<char>(), flags::DrawMatchesFlags = DrawMatchesFlags::DEFAULT) = drawMatches(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function waitKey(delay::Int32)
	return cpp_to_julia(jlopencv_cv_waitKey(julia_to_cpp(delay)))
end
waitKey(; delay::Int32 = 0) = waitKey(delay)

function setWindowTitle(winname::String, title::String)
	return cpp_to_julia(jlopencv_cv_setWindowTitle(julia_to_cpp(winname),julia_to_cpp(title)))
end
setWindowTitle(winname::String, title::String; ) = setWindowTitle(winname, title)

function bitwise_xor(src1::Mat, src2::Mat, dst::Mat, mask::Mat)
	return cpp_to_julia(jlopencv_cv_bitwise_xor(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_xor(src1::Mat, src2::Mat, dst::Mat; mask::Mat = Mat()) = bitwise_xor(src1, src2, dst, mask)

function bitwise_xor(src1::UMat, src2::UMat, dst::UMat, mask::UMat)
	return cpp_to_julia(jlopencv_cv_bitwise_xor(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_xor(src1::UMat, src2::UMat, dst::UMat; mask::UMat = UMat()) = bitwise_xor(src1, src2, dst, mask)

function remap(src::Mat, map1::Mat, map2::Mat, interpolation::Int32, dst::Mat, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_remap(julia_to_cpp(src),julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(interpolation),julia_to_cpp(dst),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
remap(src::Mat, map1::Mat, map2::Mat, interpolation::Int32, dst::Mat; borderMode::Int32 = BORDER_CONSTANT, borderValue::Scalar = Scalar()) = remap(src, map1, map2, interpolation, dst, borderMode, borderValue)

function remap(src::UMat, map1::UMat, map2::UMat, interpolation::Int32, dst::UMat, borderMode::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_remap(julia_to_cpp(src),julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(interpolation),julia_to_cpp(dst),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
remap(src::UMat, map1::UMat, map2::UMat, interpolation::Int32, dst::UMat; borderMode::Int32 = BORDER_CONSTANT, borderValue::Scalar = Scalar()) = remap(src, map1, map2, interpolation, dst, borderMode, borderValue)

function repeat(src::Mat, ny::Int32, nx::Int32, dst::Mat)
	return cpp_to_julia(jlopencv_cv_repeat(julia_to_cpp(src),julia_to_cpp(ny),julia_to_cpp(nx),julia_to_cpp(dst)))
end
repeat(src::Mat, ny::Int32, nx::Int32, dst::Mat; ) = repeat(src, ny, nx, dst)

function repeat(src::UMat, ny::Int32, nx::Int32, dst::UMat)
	return cpp_to_julia(jlopencv_cv_repeat(julia_to_cpp(src),julia_to_cpp(ny),julia_to_cpp(nx),julia_to_cpp(dst)))
end
repeat(src::UMat, ny::Int32, nx::Int32, dst::UMat; ) = repeat(src, ny, nx, dst)

function convertScaleAbs(src::Mat, dst::Mat, alpha::Float64, beta::Float64)
	return cpp_to_julia(jlopencv_cv_convertScaleAbs(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta)))
end
convertScaleAbs(src::Mat, dst::Mat; alpha::Float64 = 1, beta::Float64 = 0) = convertScaleAbs(src, dst, alpha, beta)

function convertScaleAbs(src::UMat, dst::UMat, alpha::Float64, beta::Float64)
	return cpp_to_julia(jlopencv_cv_convertScaleAbs(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta)))
end
convertScaleAbs(src::UMat, dst::UMat; alpha::Float64 = 1, beta::Float64 = 0) = convertScaleAbs(src, dst, alpha, beta)

function solveP3P(objectPoints::Mat, imagePoints::Mat, cameraMatrix::Mat, distCoeffs::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_solveP3P(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(flags)))
end
solveP3P(objectPoints::Mat, imagePoints::Mat, cameraMatrix::Mat, distCoeffs::Mat, flags::Int32; ) = solveP3P(objectPoints, imagePoints, cameraMatrix, distCoeffs, flags)

function solveP3P(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_solveP3P(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(flags)))
end
solveP3P(objectPoints::UMat, imagePoints::UMat, cameraMatrix::UMat, distCoeffs::UMat, flags::Int32; ) = solveP3P(objectPoints, imagePoints, cameraMatrix, distCoeffs, flags)

function trace(mtx::Mat)
	return cpp_to_julia(jlopencv_cv_trace(julia_to_cpp(mtx)))
end
trace(mtx::Mat; ) = trace(mtx)

function trace(mtx::UMat)
	return cpp_to_julia(jlopencv_cv_trace(julia_to_cpp(mtx)))
end
trace(mtx::UMat; ) = trace(mtx)

function getRotationMatrix2D(center::PoInt322f, angle::Float64, scale::Float64)
	return cpp_to_julia(jlopencv_cv_getRotationMatrix2D(julia_to_cpp(center),julia_to_cpp(angle),julia_to_cpp(scale)))
end
getRotationMatrix2D(center::PoInt322f, angle::Float64, scale::Float64; ) = getRotationMatrix2D(center, angle, scale)

function max(src1::Mat, src2::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_max(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
max(src1::Mat, src2::Mat, dst::Mat; ) = max(src1, src2, dst)

function max(src1::UMat, src2::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_max(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
max(src1::UMat, src2::UMat, dst::UMat; ) = max(src1, src2, dst)

function imshow(winname::String, mat::Mat)
	return cpp_to_julia(jlopencv_cv_imshow(julia_to_cpp(winname),julia_to_cpp(mat)))
end
imshow(winname::String, mat::Mat; ) = imshow(winname, mat)

function imshow(winname::String, mat::UMat)
	return cpp_to_julia(jlopencv_cv_imshow(julia_to_cpp(winname),julia_to_cpp(mat)))
end
imshow(winname::String, mat::UMat; ) = imshow(winname, mat)

function sepFilter2D(src::Mat, ddepth::Int32, kernelX::Mat, kernelY::Mat, dst::Mat, anchor::PoInt32, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_sepFilter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernelX),julia_to_cpp(kernelY),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
sepFilter2D(src::Mat, ddepth::Int32, kernelX::Mat, kernelY::Mat, dst::Mat; anchor::PoInt32 = Point(-1,-1), delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = sepFilter2D(src, ddepth, kernelX, kernelY, dst, anchor, delta, borderType)

function sepFilter2D(src::UMat, ddepth::Int32, kernelX::UMat, kernelY::UMat, dst::UMat, anchor::PoInt32, delta::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_sepFilter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernelX),julia_to_cpp(kernelY),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
sepFilter2D(src::UMat, ddepth::Int32, kernelX::UMat, kernelY::UMat, dst::UMat; anchor::PoInt32 = Point(-1,-1), delta::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = sepFilter2D(src, ddepth, kernelX, kernelY, dst, anchor, delta, borderType)

function calcHist(images::vector{Mat}, channels::vector{Int32}, mask::Mat, histSize::vector{Int32}, ranges::vector{Float32}, hist::Mat, accumulate::Bool)
	return cpp_to_julia(jlopencv_cv_calcHist(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(mask),julia_to_cpp(histSize),julia_to_cpp(ranges),julia_to_cpp(hist),julia_to_cpp(accumulate)))
end
calcHist(images::vector{Mat}, channels::vector{Int32}, mask::Mat, histSize::vector{Int32}, ranges::vector{Float32}, hist::Mat; accumulate::Bool = false) = calcHist(images, channels, mask, histSize, ranges, hist, accumulate)

function calcHist(images::vector{UMat}, channels::vector{Int32}, mask::UMat, histSize::vector{Int32}, ranges::vector{Float32}, hist::UMat, accumulate::Bool)
	return cpp_to_julia(jlopencv_cv_calcHist(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(mask),julia_to_cpp(histSize),julia_to_cpp(ranges),julia_to_cpp(hist),julia_to_cpp(accumulate)))
end
calcHist(images::vector{UMat}, channels::vector{Int32}, mask::UMat, histSize::vector{Int32}, ranges::vector{Float32}, hist::UMat; accumulate::Bool = false) = calcHist(images, channels, mask, histSize, ranges, hist, accumulate)

function stereoCalibrateExtended(objectPoints::vector{Mat}, imagePoints1::vector{Mat}, imagePoints2::vector{Mat}, cameraMatrix1::Mat, distCoeffs1::Mat, cameraMatrix2::Mat, distCoeffs2::Mat, imageSize::Size, R::Mat, T::Mat, E::Mat, F::Mat, perViewErrors::Mat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_stereoCalibrateExtended(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrateExtended(objectPoints::vector{Mat}, imagePoints1::vector{Mat}, imagePoints2::vector{Mat}, cameraMatrix1::Mat, distCoeffs1::Mat, cameraMatrix2::Mat, distCoeffs2::Mat, imageSize::Size, R::Mat, T::Mat, E::Mat, F::Mat, perViewErrors::Mat; flags::Int32 = CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6)) = stereoCalibrateExtended(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, perViewErrors, flags, criteria)

function stereoCalibrateExtended(objectPoints::vector{UMat}, imagePoints1::vector{UMat}, imagePoints2::vector{UMat}, cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat, E::UMat, F::UMat, perViewErrors::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_stereoCalibrateExtended(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrateExtended(objectPoints::vector{UMat}, imagePoints1::vector{UMat}, imagePoints2::vector{UMat}, cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat, E::UMat, F::UMat, perViewErrors::UMat; flags::Int32 = CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6)) = stereoCalibrateExtended(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, perViewErrors, flags, criteria)

function findFundamentalMat(points1::Mat, points2::Mat, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, mask::Mat)
	return cpp_to_julia(jlopencv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(mask)))
end
findFundamentalMat(points1::Mat, points2::Mat, method::Int32; method::Int32 = FM_RANSAC, ransacReprojThreshold::Float64 = 3., confidence::Float64 = 0.99) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, mask)

function findFundamentalMat(points1::UMat, points2::UMat, method::Int32, ransacReprojThreshold::Float64, confidence::Float64, mask::UMat)
	return cpp_to_julia(jlopencv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(mask)))
end
findFundamentalMat(points1::UMat, points2::UMat, method::Int32; method::Int32 = FM_RANSAC, ransacReprojThreshold::Float64 = 3., confidence::Float64 = 0.99) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, mask)

function calibrationMatrixValues(cameraMatrix::Mat, imageSize::Size, apertureWidth::Float64, apertureHeight::Float64)
	return cpp_to_julia(jlopencv_cv_calibrationMatrixValues(julia_to_cpp(cameraMatrix),julia_to_cpp(imageSize),julia_to_cpp(apertureWidth),julia_to_cpp(apertureHeight)))
end
calibrationMatrixValues(cameraMatrix::Mat, imageSize::Size, apertureWidth::Float64, apertureHeight::Float64; ) = calibrationMatrixValues(cameraMatrix, imageSize, apertureWidth, apertureHeight)

function calibrationMatrixValues(cameraMatrix::UMat, imageSize::Size, apertureWidth::Float64, apertureHeight::Float64)
	return cpp_to_julia(jlopencv_cv_calibrationMatrixValues(julia_to_cpp(cameraMatrix),julia_to_cpp(imageSize),julia_to_cpp(apertureWidth),julia_to_cpp(apertureHeight)))
end
calibrationMatrixValues(cameraMatrix::UMat, imageSize::Size, apertureWidth::Float64, apertureHeight::Float64; ) = calibrationMatrixValues(cameraMatrix, imageSize, apertureWidth, apertureHeight)

function multiply(src1::Mat, src2::Mat, dst::Mat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_multiply(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
multiply(src1::Mat, src2::Mat, dst::Mat; scale::Float64 = 1, dtype::Int32 = -1) = multiply(src1, src2, dst, scale, dtype)

function multiply(src1::UMat, src2::UMat, dst::UMat, scale::Float64, dtype::Int32)
	return cpp_to_julia(jlopencv_cv_multiply(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
multiply(src1::UMat, src2::UMat, dst::UMat; scale::Float64 = 1, dtype::Int32 = -1) = multiply(src1, src2, dst, scale, dtype)

function ellipse2Poly(center::PoInt32, axes::Size, angle::Int32, arcStart::Int32, arcEnd::Int32, delta::Int32)
	return cpp_to_julia(jlopencv_cv_ellipse2Poly(julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(arcStart),julia_to_cpp(arcEnd),julia_to_cpp(delta)))
end
ellipse2Poly(center::PoInt32, axes::Size, angle::Int32, arcStart::Int32, arcEnd::Int32, delta::Int32; ) = ellipse2Poly(center, axes, angle, arcStart, arcEnd, delta)

function stereoCalibrate(objectPoints::vector{Mat}, imagePoints1::vector{Mat}, imagePoints2::vector{Mat}, cameraMatrix1::Mat, distCoeffs1::Mat, cameraMatrix2::Mat, distCoeffs2::Mat, imageSize::Size, R::Mat, T::Mat, E::Mat, F::Mat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::vector{Mat}, imagePoints1::vector{Mat}, imagePoints2::vector{Mat}, cameraMatrix1::Mat, distCoeffs1::Mat, cameraMatrix2::Mat, distCoeffs2::Mat, imageSize::Size, R::Mat, T::Mat, E::Mat, F::Mat; flags::Int32 = CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, flags, criteria)

function stereoCalibrate(objectPoints::vector{UMat}, imagePoints1::vector{UMat}, imagePoints2::vector{UMat}, cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat, E::UMat, F::UMat, flags::Int32, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::vector{UMat}, imagePoints1::vector{UMat}, imagePoints2::vector{UMat}, cameraMatrix1::UMat, distCoeffs1::UMat, cameraMatrix2::UMat, distCoeffs2::UMat, imageSize::Size, R::UMat, T::UMat, E::UMat, F::UMat; flags::Int32 = CALIB_FIX_INTRINSIC, criteria::TermCriteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, flags, criteria)

function cornerMinEigenVal(src::Mat, blockSize::Int32, dst::Mat, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cornerMinEigenVal(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
cornerMinEigenVal(src::Mat, blockSize::Int32, dst::Mat; ksize::Int32 = 3, borderType::Int32 = BORDER_DEFAULT) = cornerMinEigenVal(src, blockSize, dst, ksize, borderType)

function cornerMinEigenVal(src::UMat, blockSize::Int32, dst::UMat, ksize::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_cornerMinEigenVal(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
cornerMinEigenVal(src::UMat, blockSize::Int32, dst::UMat; ksize::Int32 = 3, borderType::Int32 = BORDER_DEFAULT) = cornerMinEigenVal(src, blockSize, dst, ksize, borderType)

function GaussianBlur(src::Mat, ksize::Size, sigmaX::Float64, dst::Mat, sigmaY::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_GaussianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(sigmaX),julia_to_cpp(dst),julia_to_cpp(sigmaY),julia_to_cpp(borderType)))
end
GaussianBlur(src::Mat, ksize::Size, sigmaX::Float64, dst::Mat; sigmaY::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = GaussianBlur(src, ksize, sigmaX, dst, sigmaY, borderType)

function GaussianBlur(src::UMat, ksize::Size, sigmaX::Float64, dst::UMat, sigmaY::Float64, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_GaussianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(sigmaX),julia_to_cpp(dst),julia_to_cpp(sigmaY),julia_to_cpp(borderType)))
end
GaussianBlur(src::UMat, ksize::Size, sigmaX::Float64, dst::UMat; sigmaY::Float64 = 0, borderType::Int32 = BORDER_DEFAULT) = GaussianBlur(src, ksize, sigmaX, dst, sigmaY, borderType)

function haveImageWriter(filename::String)
	return cpp_to_julia(jlopencv_cv_haveImageWriter(julia_to_cpp(filename)))
end
haveImageWriter(filename::String; ) = haveImageWriter(filename)

function namedWindow(winname::String, flags::Int32)
	return cpp_to_julia(jlopencv_cv_namedWindow(julia_to_cpp(winname),julia_to_cpp(flags)))
end
namedWindow(winname::String; flags::Int32 = WINDOW_AUTOSIZE) = namedWindow(winname, flags)

function fillConvexPoly(img::Mat, points::Mat, color::Scalar, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_fillConvexPoly(julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
fillConvexPoly(img::Mat, points::Mat, color::Scalar; lineType::Int32 = LINE_8, shift::Int32 = 0) = fillConvexPoly(img, points, color, lineType, shift)

function fillConvexPoly(img::UMat, points::UMat, color::Scalar, lineType::Int32, shift::Int32)
	return cpp_to_julia(jlopencv_cv_fillConvexPoly(julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
fillConvexPoly(img::UMat, points::UMat, color::Scalar; lineType::Int32 = LINE_8, shift::Int32 = 0) = fillConvexPoly(img, points, color, lineType, shift)

function startWindowThread()
	return cpp_to_julia(jlopencv_cv_startWindowThread())
end
startWindowThread(; ) = startWindowThread()

function HOGDescriptor_getDaimlerPeopleDetector()
	return cpp_to_julia(jlopencv_cv_HOGDescriptor_getDaimlerPeopleDetector())
end
HOGDescriptor_getDaimlerPeopleDetector(; ) = HOGDescriptor_getDaimlerPeopleDetector()

function solvePoly(coeffs::Mat, roots::Mat, maxIters::Int32)
	return cpp_to_julia(jlopencv_cv_solvePoly(julia_to_cpp(coeffs),julia_to_cpp(roots),julia_to_cpp(maxIters)))
end
solvePoly(coeffs::Mat, roots::Mat; maxIters::Int32 = 300) = solvePoly(coeffs, roots, maxIters)

function solvePoly(coeffs::UMat, roots::UMat, maxIters::Int32)
	return cpp_to_julia(jlopencv_cv_solvePoly(julia_to_cpp(coeffs),julia_to_cpp(roots),julia_to_cpp(maxIters)))
end
solvePoly(coeffs::UMat, roots::UMat; maxIters::Int32 = 300) = solvePoly(coeffs, roots, maxIters)

function dilate(src::Mat, kernel::Mat, dst::Mat, anchor::PoInt32, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_dilate(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
dilate(src::Mat, kernel::Mat, dst::Mat; anchor::PoInt32 = Point(-1,-1), iterations::Int32 = 1, borderType::Int32 = BORDER_CONSTANT, borderValue::Scalar = morphologyDefaultBorderValue()) = dilate(src, kernel, dst, anchor, iterations, borderType, borderValue)

function dilate(src::UMat, kernel::UMat, dst::UMat, anchor::PoInt32, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_dilate(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
dilate(src::UMat, kernel::UMat, dst::UMat; anchor::PoInt32 = Point(-1,-1), iterations::Int32 = 1, borderType::Int32 = BORDER_CONSTANT, borderValue::Scalar = morphologyDefaultBorderValue()) = dilate(src, kernel, dst, anchor, iterations, borderType, borderValue)

function morphologyEx(src::Mat, op::Int32, kernel::Mat, dst::Mat, anchor::PoInt32, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_morphologyEx(julia_to_cpp(src),julia_to_cpp(op),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
morphologyEx(src::Mat, op::Int32, kernel::Mat, dst::Mat; anchor::PoInt32 = Point(-1,-1), iterations::Int32 = 1, borderType::Int32 = BORDER_CONSTANT, borderValue::Scalar = morphologyDefaultBorderValue()) = morphologyEx(src, op, kernel, dst, anchor, iterations, borderType, borderValue)

function morphologyEx(src::UMat, op::Int32, kernel::UMat, dst::UMat, anchor::PoInt32, iterations::Int32, borderType::Int32, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_morphologyEx(julia_to_cpp(src),julia_to_cpp(op),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
morphologyEx(src::UMat, op::Int32, kernel::UMat, dst::UMat; anchor::PoInt32 = Point(-1,-1), iterations::Int32 = 1, borderType::Int32 = BORDER_CONSTANT, borderValue::Scalar = morphologyDefaultBorderValue()) = morphologyEx(src, op, kernel, dst, anchor, iterations, borderType, borderValue)

function floodFill(image::Mat, mask::Mat, seedPoint::PoInt32, newVal::Scalar, loDiff::Scalar, upDiff::Scalar, flags::Int32)
	return cpp_to_julia(jlopencv_cv_floodFill(julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(seedPoint),julia_to_cpp(newVal),julia_to_cpp(loDiff),julia_to_cpp(upDiff),julia_to_cpp(flags)))
end
floodFill(image::Mat, mask::Mat, seedPoint::PoInt32, newVal::Scalar; loDiff::Scalar = Scalar(), upDiff::Scalar = Scalar(), flags::Int32 = 4) = floodFill(image, mask, seedPoint, newVal, loDiff, upDiff, flags)

function floodFill(image::UMat, mask::UMat, seedPoint::PoInt32, newVal::Scalar, loDiff::Scalar, upDiff::Scalar, flags::Int32)
	return cpp_to_julia(jlopencv_cv_floodFill(julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(seedPoint),julia_to_cpp(newVal),julia_to_cpp(loDiff),julia_to_cpp(upDiff),julia_to_cpp(flags)))
end
floodFill(image::UMat, mask::UMat, seedPoint::PoInt32, newVal::Scalar; loDiff::Scalar = Scalar(), upDiff::Scalar = Scalar(), flags::Int32 = 4) = floodFill(image, mask, seedPoint, newVal, loDiff, upDiff, flags)

function calcCovarMatrix(samples::Mat, mean::Mat, flags::Int32, covar::Mat, ctype::Int32)
	return cpp_to_julia(jlopencv_cv_calcCovarMatrix(julia_to_cpp(samples),julia_to_cpp(mean),julia_to_cpp(flags),julia_to_cpp(covar),julia_to_cpp(ctype)))
end
calcCovarMatrix(samples::Mat, mean::Mat, flags::Int32, covar::Mat; ctype::Int32 = CV_64F) = calcCovarMatrix(samples, mean, flags, covar, ctype)

function calcCovarMatrix(samples::UMat, mean::UMat, flags::Int32, covar::UMat, ctype::Int32)
	return cpp_to_julia(jlopencv_cv_calcCovarMatrix(julia_to_cpp(samples),julia_to_cpp(mean),julia_to_cpp(flags),julia_to_cpp(covar),julia_to_cpp(ctype)))
end
calcCovarMatrix(samples::UMat, mean::UMat, flags::Int32, covar::UMat; ctype::Int32 = CV_64F) = calcCovarMatrix(samples, mean, flags, covar, ctype)

function undistort(src::Mat, cameraMatrix::Mat, distCoeffs::Mat, dst::Mat, newCameraMatrix::Mat)
	return cpp_to_julia(jlopencv_cv_undistort(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(newCameraMatrix)))
end
undistort(src::Mat, cameraMatrix::Mat, distCoeffs::Mat, dst::Mat; newCameraMatrix::Mat = Mat()) = undistort(src, cameraMatrix, distCoeffs, dst, newCameraMatrix)

function undistort(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, dst::UMat, newCameraMatrix::UMat)
	return cpp_to_julia(jlopencv_cv_undistort(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(newCameraMatrix)))
end
undistort(src::UMat, cameraMatrix::UMat, distCoeffs::UMat, dst::UMat; newCameraMatrix::UMat = UMat()) = undistort(src, cameraMatrix, distCoeffs, dst, newCameraMatrix)

function solve(src1::Mat, src2::Mat, dst::Mat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_solve(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(flags)))
end
solve(src1::Mat, src2::Mat, dst::Mat; flags::Int32 = DECOMP_LU) = solve(src1, src2, dst, flags)

function solve(src1::UMat, src2::UMat, dst::UMat, flags::Int32)
	return cpp_to_julia(jlopencv_cv_solve(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(flags)))
end
solve(src1::UMat, src2::UMat, dst::UMat; flags::Int32 = DECOMP_LU) = solve(src1, src2, dst, flags)

function exp(src::Mat, dst::Mat)
	return cpp_to_julia(jlopencv_cv_exp(julia_to_cpp(src),julia_to_cpp(dst)))
end
exp(src::Mat, dst::Mat; ) = exp(src, dst)

function exp(src::UMat, dst::UMat)
	return cpp_to_julia(jlopencv_cv_exp(julia_to_cpp(src),julia_to_cpp(dst)))
end
exp(src::UMat, dst::UMat; ) = exp(src, dst)

function grabCut(img::Mat, mask::Mat, rect::Rect, bgdModel::Mat, fgdModel::Mat, iterCount::Int32, mode::Int32)
	return cpp_to_julia(jlopencv_cv_grabCut(julia_to_cpp(img),julia_to_cpp(mask),julia_to_cpp(rect),julia_to_cpp(bgdModel),julia_to_cpp(fgdModel),julia_to_cpp(iterCount),julia_to_cpp(mode)))
end
grabCut(img::Mat, mask::Mat, rect::Rect, bgdModel::Mat, fgdModel::Mat, iterCount::Int32; mode::Int32 = GC_EVAL) = grabCut(img, mask, rect, bgdModel, fgdModel, iterCount, mode)

function grabCut(img::UMat, mask::UMat, rect::Rect, bgdModel::UMat, fgdModel::UMat, iterCount::Int32, mode::Int32)
	return cpp_to_julia(jlopencv_cv_grabCut(julia_to_cpp(img),julia_to_cpp(mask),julia_to_cpp(rect),julia_to_cpp(bgdModel),julia_to_cpp(fgdModel),julia_to_cpp(iterCount),julia_to_cpp(mode)))
end
grabCut(img::UMat, mask::UMat, rect::Rect, bgdModel::UMat, fgdModel::UMat, iterCount::Int32; mode::Int32 = GC_EVAL) = grabCut(img, mask, rect, bgdModel, fgdModel, iterCount, mode)

function countNonZero(src::Mat)
	return cpp_to_julia(jlopencv_cv_countNonZero(julia_to_cpp(src)))
end
countNonZero(src::Mat; ) = countNonZero(src)

function countNonZero(src::UMat)
	return cpp_to_julia(jlopencv_cv_countNonZero(julia_to_cpp(src)))
end
countNonZero(src::UMat; ) = countNonZero(src)

function computeECC(templateImage::Mat, inputImage::Mat, inputMask::Mat)
	return cpp_to_julia(jlopencv_cv_computeECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(inputMask)))
end
computeECC(templateImage::Mat, inputImage::Mat; inputMask::Mat = Mat()) = computeECC(templateImage, inputImage, inputMask)

function computeECC(templateImage::UMat, inputImage::UMat, inputMask::UMat)
	return cpp_to_julia(jlopencv_cv_computeECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(inputMask)))
end
computeECC(templateImage::UMat, inputImage::UMat; inputMask::UMat = UMat()) = computeECC(templateImage, inputImage, inputMask)

function findCirclesGrid(image::Mat, patternSize::Size, flags::Int32, blobDetector::Ptr{FeatureDetector}, parameters::CirclesGridFinderParameters, centers::Mat)
	return cpp_to_julia(jlopencv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(blobDetector),julia_to_cpp(parameters),julia_to_cpp(centers)))
end
findCirclesGrid(image::Mat, patternSize::Size, flags::Int32, blobDetector::Ptr{FeatureDetector}, parameters::CirclesGridFinderParameters, centers::Mat; ) = findCirclesGrid(image, patternSize, flags, blobDetector, parameters, centers)

function findCirclesGrid(image::UMat, patternSize::Size, flags::Int32, blobDetector::Ptr{FeatureDetector}, parameters::CirclesGridFinderParameters, centers::UMat)
	return cpp_to_julia(jlopencv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(blobDetector),julia_to_cpp(parameters),julia_to_cpp(centers)))
end
findCirclesGrid(image::UMat, patternSize::Size, flags::Int32, blobDetector::Ptr{FeatureDetector}, parameters::CirclesGridFinderParameters, centers::UMat; ) = findCirclesGrid(image, patternSize, flags, blobDetector, parameters, centers)

function findCirclesGrid(image::Mat, patternSize::Size, centers::Mat, flags::Int32, blobDetector::Ptr{FeatureDetector})
	return cpp_to_julia(jlopencv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(centers),julia_to_cpp(flags),julia_to_cpp(blobDetector)))
end
findCirclesGrid(image::Mat, patternSize::Size, centers::Mat; flags::Int32 = CALIB_CB_SYMMETRIC_GRID, blobDetector::Ptr{FeatureDetector} = SimpleBlobDetector::create()) = findCirclesGrid(image, patternSize, centers, flags, blobDetector)

function findCirclesGrid(image::UMat, patternSize::Size, centers::UMat, flags::Int32, blobDetector::Ptr{FeatureDetector})
	return cpp_to_julia(jlopencv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(centers),julia_to_cpp(flags),julia_to_cpp(blobDetector)))
end
findCirclesGrid(image::UMat, patternSize::Size, centers::UMat; flags::Int32 = CALIB_CB_SYMMETRIC_GRID, blobDetector::Ptr{FeatureDetector} = SimpleBlobDetector::create()) = findCirclesGrid(image, patternSize, centers, flags, blobDetector)

function borderInterpolate(p::Int32, len::Int32, borderType::Int32)
	return cpp_to_julia(jlopencv_cv_borderInterpolate(julia_to_cpp(p),julia_to_cpp(len),julia_to_cpp(borderType)))
end
borderInterpolate(p::Int32, len::Int32, borderType::Int32; ) = borderInterpolate(p, len, borderType)

function reprojectImageTo3D(disparity::Mat, Q::Mat, _3dImage::Mat, handleMissingValues::Bool, ddepth::Int32)
	return cpp_to_julia(jlopencv_cv_reprojectImageTo3D(julia_to_cpp(disparity),julia_to_cpp(Q),julia_to_cpp(_3dImage),julia_to_cpp(handleMissingValues),julia_to_cpp(ddepth)))
end
reprojectImageTo3D(disparity::Mat, Q::Mat, _3dImage::Mat; handleMissingValues::Bool = false, ddepth::Int32 = -1) = reprojectImageTo3D(disparity, Q, _3dImage, handleMissingValues, ddepth)

function reprojectImageTo3D(disparity::UMat, Q::UMat, _3dImage::UMat, handleMissingValues::Bool, ddepth::Int32)
	return cpp_to_julia(jlopencv_cv_reprojectImageTo3D(julia_to_cpp(disparity),julia_to_cpp(Q),julia_to_cpp(_3dImage),julia_to_cpp(handleMissingValues),julia_to_cpp(ddepth)))
end
reprojectImageTo3D(disparity::UMat, Q::UMat, _3dImage::UMat; handleMissingValues::Bool = false, ddepth::Int32 = -1) = reprojectImageTo3D(disparity, Q, _3dImage, handleMissingValues, ddepth)

