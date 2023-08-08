# Logical Gate Circom Circuit with ZK-SNARK Proof

Welcome to the Logical Gate Circom Circuit with ZK-SNARK Proof project! This repository showcases the implementation of a logical gate circuit using the Circom programming language. Additionally, it demonstrates the powerful cryptographic concept of Zero-Knowledge Succinct Non-Interactive Argument of Knowledge (ZK-SNARK) proofs. These proofs allow us to prove knowledge of specific inputs that yield a particular output while keeping the actual inputs confidential.

## Table of Contents

- [Introduction](#introduction)
- [Circuit Logic](#circuit-logic)
- [Steps Involved](#steps-involved)
- [Getting Started](#getting-started)
- [Security Considerations](#security-considerations)
- [Author](#author)

## Introduction

In this project, we explore the realm of ZK-SNARK proofs, a cryptographic technique that enables the verification of information without disclosing the actual data. By implementing a logical gate circuit using the Circom programming language, we can prove that certain inputs yield a specific output without revealing the inputs themselves. This concept has significant implications for data privacy and authentication in various fields.

## Circuit Logic

The logical gate circuit is designed to replicate a classic truth table scenario. Here's a simplified version of the truth table:

| A | B | X | Y | Q |
|---|---|---|---|---|
| 0 | 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 0 | 0 |
| 1 | 0 | 0 | 1 | 1 |
| 1 | 1 | 1 | 0 | 1 |

The primary objective is to prove that we possess knowledge of the inputs A=0 and B=1, which lead to an output Q=0.

## Steps Involved

To achieve our project goals, we break down the process into several key steps:

1. **Circuit Implementation:** We construct the logical gate circuit using the Circom programming language. This forms the basis for the subsequent steps.

2. **Compilation:** The circuit is compiled using Circom's tools. This process generates intermediary files that serve as the foundation for the later stages.

3. **Generating ZK-SNARK Proof:** This step involves generating a ZK-SNARK proof based on the specified inputs (A=0, B=1) that result in the desired output (Q=0). This proof will allow us to verify the claim without exposing the actual inputs.

4. **Deploying Verifier Contract:** To verify the generated proofs, we deploy a Solidity verifier contract on a suitable blockchain network. This contract acts as a trusted authority to validate the proofs.

5. **Verification:** The deployed verifier contract is then utilized to verify the generated ZK-SNARK proof. This step demonstrates that we indeed possess knowledge of inputs (A=0, B=1) that lead to the claimed output (Q=0).

## Getting Started

To get started with this project, follow these steps:

1. **Clone the Repository:** Clone this repository to your local machine using the `git clone` command.

2. **Install Dependencies:** Run `npm install` to install the necessary dependencies specified in the `package.json` file.

3. **Securing Private Key:** Create a `.env` file in the root directory of the project. Inside this file, store your wallet's private key securely using the format: `MYPRIVATEKEY='your wallet private key'`.

4. **Compile the Circuit:** Execute the command `npx hardhat circom` to compile the logical gate circuit. This will produce the `out` directory containing compiled outputs and contracts.

5. **Deploy and Verify:** Run the deployment script using `npx hardhat run scripts/deploy.ts`. This script handles the deployment of the verifier contract, generates proofs, and verifies them against the verifier contract.

## Security Considerations

The security of your wallet's private key is of utmost importance. Make sure to follow these precautions:

- Never share your private key or expose it in public repositories.
- Store your private key securely in the `.env` file and keep it separate from your public codebase.
- Exercise caution when working with private keys, as they provide access to your wallet and funds.

## Author

This project was authored by Shreyanshi Mishra. For any inquiries or feedback, feel free to reach out at shreyanshimishra7689@gmail.com.

