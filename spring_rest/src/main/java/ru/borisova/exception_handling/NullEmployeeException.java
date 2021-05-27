package ru.borisova.exception_handling;

public class NullEmployeeException extends RuntimeException{
    public NullEmployeeException(String message) {
        super(message);
    }
}
