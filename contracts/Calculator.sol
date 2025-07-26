// License
//SPDX-License-Identifier LGPL-3.0-only


// Solidity version
pragma solidity 0.8.24;


contract Calculator{

    // Variables
    uint256 public resultado = 10;


    // Modifiers
    modifier checkNumber(uint256 num1_){
        require(num1_ == 10, "Input must be equal to 10");
        _;
    }


    // Events

    event Addition(uint256 number1, uint256 number2, uint256 resultado);

    event Subtraction (uint256 number1, uint256 number2, uint256 resultado);

    event Multiplication(uint256 number1, uint256 number2, uint256 resultado);

    event Multiplied(uint256 num1,uint256 resultado);

    event Division(uint256 number1, uint256 number2, uint256 resultado);





    // External Functions

    function addition(uint256 num1_, uint256 num2_) public returns (uint256 resultado_) {
        resultado_ = num1_ + num2_;
        resultado = resultado_;

        emit Addition(num1_, num2_, resultado);
    }

    function subtraction(uint256 num1_, uint256 num2_) public returns (uint256 resultado_) {
        resultado_ = subtraction_logic(num1_, num2_);
        resultado = resultado_;

        emit Subtraction (num1_, num2_, resultado);
    }

    function multiplier(uint256 num1_, uint256 num2_) public returns (uint256 resultado_) {
        resultado_ = num1_ * num2_;
        resultado = resultado_;

        emit Multiplication(num1_, num2_, resultado);
        
    }

    function division(uint256 num1_, uint256 num2_) public returns (uint256 resultado_){
        resultado_ = num1_ / num2_;
        resultado = resultado_;

        emit Division(num1_, num2_, resultado);
    }

    function multiplier2(uint256 num1_) public checkNumber(num1_){

        resultado = resultado * num1_;

        emit Multiplied(num1_, resultado);
    }

    // Internal Functions
    function subtraction_logic(uint256 num1_, uint256 num2) internal pure returns (uint256 resultado_) {
        resultado_ = num1_ - num2;
    }
}