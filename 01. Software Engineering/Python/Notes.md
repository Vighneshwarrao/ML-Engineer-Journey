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

## Day 007:

-- Pytest is a Python testing framework used to automate testing of Python code.
-- Test case is a piece of code that checks whether a specific behavior works correctly.
-- Pytest mainly uses assert statements to verify expected results.
-- Test files are commonly named test_*.py or *_test.py.
-- Test functions normally start with test_ so pytest can automatically discover them.
-- Run all tests using pytest.
-- Run tests with more details using pytest -v.
-- Run a specific test file using pytest test_file.py.
-- Run a specific test using pytest test_file.py::test_name.
-- pytest.raises() is used to test whether code raises an expected exception.

## Day 008:

-- Fixtures are reusable setup components that provide data, objects, or resources to tests.
-- @pytest.fixture is used to create a fixture.
-- conftest.py stores shared fixtures and pytest configuration for multiple test files.
-- Parametrization allows the same test to run with multiple sets of input values using @pytest.mark.parametrize.
-- Markers categorize tests and allow you to selectively run them, e.g. @pytest.mark.integration.
-- Mocking replaces external dependencies such as APIs, databases, or services with controlled fake objects during testing.
-- Unit testing tests a small, isolated piece of code such as a function.
-- Integration testing checks whether multiple components work correctly together.
-- Pytest provides clear information about passed and failed tests, including the expected and actual values.
-- Pytest can test data cleaning, feature engineering, data validation, model input/output, and ML pipelines.
-- For ML engineers, pytest can test model loading, prediction APIs, batch predictions, and model performance thresholds.
-- Pytest can be integrated into CI/CD pipelines so deployment can be stopped when tests fail.
-- In production ML systems, pytest helps prevent regressions, where a code change accidentally breaks previously working functionality.
-- Core pytest flow:
Write code → Write tests → Run pytest → Fix failures → Deploy

## Day 009:

-- Logging is the process of recording information about a program's execution.
-- Python provides the built-in logging module for application logging.
-- Logging is preferred over print() for production applications because it provides levels, formatting, filtering, and destinations.
-- Logger is the object used to create log messages.
-- logging.getLogger(__name__) is the common way to create a module-level logger.
-- DEBUG is used for detailed information useful during development and troubleshooting.
-- INFO records normal application events.
-- WARNING indicates something unexpected that does not necessarily stop the application.
-- ERROR indicates that an operation failed.
-- CRITICAL indicates a severe failure that may prevent the application from continuing.
-- logging.basicConfig() provides basic logging configuration.
-- Handler determines where logs are sent, such as the console or a file.
-- Formatter determines how log messages are displayed.
-- Log level controls which messages are recorded/displayed.
-- logger.exception() logs an error message together with the exception traceback.