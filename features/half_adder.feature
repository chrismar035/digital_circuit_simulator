Feature: As a half adder
  I can add two binary inputs
  so that I can generate the sum and carry outputs

  Scenario Outline: Adding binary inputs
    Given <input1> and <input2>
    When half adder finishes calculations
    Then <sum> and <carry> are generated
    Examples:
      |input1 |input2  |sum |carry |
      |0      |0       |0   |0     |
      |0      |1       |1   |0     |
      |1      |0       |1   |0     |
      |1      |1       |0   |1     |
