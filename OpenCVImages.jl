#Adapted from IndirectArray

module OpenCVImages


struct OpenCVImage <: AbstractArray{UInt8,3}
    mat
    data_raw
    data

    @inline function OpenCVImage(mat, data_raw)
        data = PermutedDimsArray(data_raw, [1,3,2])
        data = reinterpret(UInt8, data)
        new(mat, data_raw, data)
    end
end

Base.size(A::OpenCVImage) = size(A.data)
Base.axes(A::OpenCVImage) = axes(A.data)
Base.IndexStyle(::Type{OpenCVImage}) = IndexStyle(DenseArray{UInt8, 3})

Base.copy(A::OpenCVImage) = OpenCVImage(A.mat, copy(A.data))
Base.pointer(A::OpenCVImage) = Base.pointer(A.data)

@inline function Base.getindex(A::OpenCVImage, I::Vararg{Int,3})
    @boundscheck checkbounds(A.data, I...)
    @inbounds ret = A.data[I...]
    ret
end

@inline function Base.setindex!(A::OpenCVImage, x, I::Vararg{Int,3})
    @boundscheck checkbounds(A.data, I...)
    A.data[I...] = x
    return A
end

end # module
