package com.scopelearn.application.exception;

public class RecordNotFoundException extends RuntimeException 
{
    public RecordNotFoundException(String exception) {
        super(exception);
    }
}