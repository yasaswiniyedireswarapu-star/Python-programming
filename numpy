import numpy as np

# a) To get help on the add function
print("Help on numpy.add function:")
help(np.add)

# Creating arrays using array(), zeros(), ones(), linspace()
arr1 = np.array([5, 6, 7, 8])
arr2 = np.array([8, 7, 6, 5])

zeros_arr = np.zeros(4)
ones_arr = np.ones(4)
lin_arr = np.linspace(0, 10, 5)

print("\nArray 1:", arr1)
print("Array 2:", arr2)
print("Zeros Array:", zeros_arr)
print("Ones Array:", ones_arr)
print("Linspace Array:", lin_arr)

# b) To test whether none of the elements of a given array is zero
arr3 = np.array([1, 2, 3, 4])
result = np.all(arr3)
print("\nNone of the elements are zero:", result)

arr4 = np.array([1, 0, 3, 4])
print("None of the elements are zero:", np.all(arr4))

# c) Element-wise comparison of two arrays
print("\nElement-wise Comparison between arr1 and arr2:")
print("Greater: ", np.greater(arr1, arr2))
print("Greater_equal: ", np.greater_equal(arr1, arr2))
print("Less: ", np.less(arr1, arr2))
print("Less_equal: ", np.less_equal(arr1, arr2))
print("Equal: ", np.equal(arr1, arr2))

# Checking equality within a tolerance
arr5 = np.array([1.0, 2.000001, 3.0])
arr6 = np.array([1.0, 2.0, 3.0])
print("\nEqual within a tolerance:", np.allclose(arr5, arr6))

# Using add() and tolist()
sum_arr = np.add(arr1, arr2)
print("\nAddition of arr1 and arr2:", sum_arr)
print("Sum array as list:", sum_arr.tolist())

# Showing basic info (array type, shape, dtype)
print("\nArray Info:")
print("Type:", type(arr1))
print("Shape:", arr1.shape)
print("Data type:", arr1.dtype)
OUTPUT:
Help on numpy.add function:
Help on ufunc:

add = <ufunc 'add'>
    add(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature])

    Add arguments element-wise.

    Parameters
    ----------
    x1, x2 : array_like
        The arrays to be added.
        If ``x1.shape != x2.shape``, they must be broadcastable to a common
        shape (which becomes the shape of the output).
    out : ndarray, None, or tuple of ndarray and None, optional
        A location into which the result is stored. If provided, it must have
        a shape that the inputs broadcast to. If not provided or None,
        a freshly-allocated array is returned. A tuple (possible only as a
        keyword argument) must have length equal to the number of outputs.
    where : array_like, optional
        This condition is broadcast over the input. At locations where the
        condition is True, the `out` array will be set to the ufunc result.
        Elsewhere, the `out` array will retain its original value.
        Note that if an uninitialized `out` array is created via the default
        ``out=None``, locations within it where the condition is False will
        remain uninitialized.
    **kwargs
        For other keyword-only arguments, see the
        :ref:`ufunc docs <ufuncs.kwargs>`.

    Returns
    -------
    add : ndarray or scalar
        The sum of `x1` and `x2`, element-wise.
        This is a scalar if both `x1` and `x2` are scalars.

    Notes
    -----
    Equivalent to `x1` + `x2` in terms of array broadcasting.

    Examples
    --------
    >>> np.add(1.0, 4.0)
    5.0
    >>> x1 = np.arange(9.0).reshape((3, 3))
    >>> x2 = np.arange(3.0)
    >>> np.add(x1, x2)
    array([[  0.,   2.,   4.],
           [  3.,   5.,   7.],
           [  6.,   8.,  10.]])

    The ``+`` operator can be used as a shorthand for ``np.add`` on ndarrays.

    >>> x1 = np.arange(9.0).reshape((3, 3))
    >>> x2 = np.arange(3.0)
    >>> x1 + x2
    array([[ 0.,  2.,  4.],
           [ 3.,  5.,  7.],
           [ 6.,  8., 10.]])


Array 1: [5 6 7 8]
Array 2: [8 7 6 5]
Zeros Array: [0. 0. 0. 0.]
Ones Array: [1. 1. 1. 1.]
Linspace Array: [ 0.   2.5  5.   7.5 10. ]

None of the elements are zero: True
None of the elements are zero: False

Element-wise Comparison between arr1 and arr2:
Greater:  [False False  True  True]
Greater_equal:  [False False  True  True]
Less:  [ True  True False False]
Less_equal:  [ True  True False False]
Equal:  [False False False False]

Equal within a tolerance: True

Addition of arr1 and arr2: [13 13 13 13]
Sum array as list: [13, 13, 13, 13]

Array Info:
Type: <class 'numpy.ndarray'>
Shape: (4,)
Data type: int64
