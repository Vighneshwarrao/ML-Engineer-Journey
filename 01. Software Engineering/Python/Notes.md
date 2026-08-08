## Day 001:

-- Encapsulation can be implemented using private(__) and protected(_) attributes
-- Every class that inherits Abstract class must implement the Abstract methods.
-- Compile Time polymorphism(Method Overloading) is achieved by --args
-- Run Time polymorphism are Method Overriding , duck typing , operator overloading


## Day 002:
-- Dataclass: A class for storing data with automatically generated special methods.
-- Decorator: @dataclass
-- Module: dataclasses
-- Introduced in: Python 3.7
-- Auto-generates: __init__, __repr__, __eq__ (and optionally ordering and hashing behavior)
-- field(): Customize individual fields.
-- default_factory: Safely create mutable default values.
-- frozen=True: Makes instances immutable.
-- order=True: Enables ordering comparisons.
-- init=False: Excludes a field from the constructor.
-- repr=False: Hides a field from the object's string representation.
-- compare=False: Excludes a field from equality and ordering.
-- __post_init__(): Runs immediately after the generated constructor.
-- asdict(): Convert a dataclass instance to a dictionary.
-- astuple(): Convert a dataclass instance to a tuple.--

-- Decorator: A function that wraps another function to add behavior without modifying its source code.
-- Syntax: @decorator
-- Internally: func = decorator(func)
-- Wrapper: Executes additional code before and/or after the original function.
-- *args, **kwargs: Makes decorators work with any function signature.
-- functools.wraps: Preserves the original function's metadata.
-- Common Uses: Logging, authentication, authorization, caching, timing, validation, routing in Flask/FastAPI.


## Day 003:

-- Generator: An iterator that produces values one at a time on demand.
-- Keyword: yield
-- Lazy Evaluation: Compute values only when needed.
-- yield: Returns a value, pauses execution, and preserves the function's state.
-- next(): Retrieves the next generated value.
-- StopIteration: Raised when the generator is exhausted.
-- Generator Expression: (expression for item in iterable)
-- Best Use Cases: Large files, streaming data, pipelines, infinite sequences, memory-efficient processing.


## Day 004:

-- Iterable: An object you can loop over (list, tuple, string, dictionary, range, etc.).
-- Iterator: An object that returns one item at a time and remembers where it is.
-- iter(iterable) creates an iterator.
-- next(iterator) gets the next item.
-- When no items remain, next() raises StopIteration.
-- A for loop automatically uses iter() and repeatedly calls next() until StopIteration

## Day 005:

-- Exception: A runtime error that interrupts normal execution.
-- try: Code that might raise an exception.
-- except: Handles an exception.
-- else: Runs only if no exception occurs.
-- finally: Runs whether or not an exception occurs.
-- Catch specific exceptions instead of using a bare except.
-- Use Exception as e when you need details about the error.

## Day 006:

-- async def → defines a coroutine function.
-- Calling an async function → creates a coroutine object.
-- await → pauses the coroutine and gives the event loop an opportunity to run other work.
-- Event loop → manages asynchronous execution.
-- asyncio.run() → starts an async program.
-- asyncio.gather() → allows multiple awaitable operations to run concurrently.
-- Async is mainly useful for I/O-bound operations.
-- Async is not the same as multithreading or multiprocessing.
-- time.sleep() blocks; await asyncio.sleep() does not block the event loop.
-- Simply using async does not automatically make code concurrent. How you schedule/await the coroutines matters.