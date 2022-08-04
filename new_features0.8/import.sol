// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//* import { symbol1 as alias, symbol2 } from "filename";
import { Unauthorized, helper as h1} from "funcOutContract.sol"; //you cant import and have a function with the same name in a file so we import it as alias

function helper(uint x) view returns (uint) {}

contract Import {}