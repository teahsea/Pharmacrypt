// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Pharmacrypt {
    // Structure to represent a pharmaceutical product
    struct Product {
        uint productId;
        string name;
        string batchNumber;
        uint manufacturingDate;
        uint expirationDate;
        address manufacturer;
        address currentOwner;
        bool isVerified;
    }

    // Mapping to store products by their ID
    mapping(uint => Product) public products;

    // Event to log product creation
    event ProductCreated(uint productId, string name, string batchNumber, uint manufacturingDate, uint expirationDate, address manufacturer);

    // Function to add a new product to the blockchain
    function addProduct(uint _productId, string memory _name, string memory _batchNumber, uint _manufacturingDate, uint _expirationDate) public {
        // Ensure product ID does not already exist
        require(products[_productId].productId == 0, "Product ID already exists");

        // Ensure expiration date is after manufacturing date
        require(_expirationDate > _manufacturingDate, "Invalid expiration date");

        // Create the product
        Product memory newProduct = Product(_productId, _name, _batchNumber, _manufacturingDate, _expirationDate, msg.sender, msg.sender, false);
        products[_productId] = newProduct;

        // Emit event
        emit ProductCreated(_productId, _name, _batchNumber, _manufacturingDate, _expirationDate, msg.sender);
    }

    // Function to transfer ownership of a product
    function transferProductOwnership(uint _productId, address _newOwner) public {
        // Ensure the caller is the current owner of the product
        require(products[_productId].currentOwner == msg.sender, "Only the current owner can transfer ownership");

        // Update the current owner
        products[_productId].currentOwner = _newOwner;
    }

    // Function to verify the authenticity of a product
    function verifyProduct(uint _productId) public {
        // Ensure the caller is the manufacturer or the current owner of the product
        require(msg.sender == products[_productId].manufacturer || msg.sender == products[_productId].currentOwner, "Only the manufacturer or the current owner can verify the product");

        // Mark the product as verified
        products[_productId].isVerified = true;
    }
}
