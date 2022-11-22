package com.example;

import static org.junit.Assert.assertEquals;

import com.example.MyLib;
import org.junit.Test;


public class MyLibTest {

  @Test
  public void sumNegativeValues() throws Exception {
    assertEquals(-7, MyLib.sum(-2, -5));
  }

  @Test
  public void sumPositiveValues() throws Exception {
    assertEquals(6, MyLib.sum(1, 5));
  }

}
