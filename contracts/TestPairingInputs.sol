pragma solidity ^0.5.10;
pragma experimental ABIEncoderV2;

import {GenericEllipticCurve} from "../contracts/GenericEllipticCurve.sol";
import {CommonTypes} from "../contracts/CommonTypes.sol";
import {HelpersForTests} from "../contracts/HelpersForTests.sol";
import {PrebuildCurves} from "../contracts/PrebuildCurves.sol";
import {LengthsVerifier} from "../contracts/LengthsVerifier.sol";

contract TestPairingInputs {

    CommonTypes.CurveParams bls12_384_m_params;

    constructor() public {
        bls12_384_m_params = PrebuildCurves.bls12_384_m();
    }

    function testPairingInputLengthsBLS12_384_M() public view returns (bool) {
        uint8 numPairs = 2;
        bytes memory pairs = hex"000ee7950a41f0c887ca93b20ca08a39440ae6e8ed83e01709611584526cecb777c3ab3b9ff9d3b88fbe108fc916396d8f009445fc17ee70f2b9e96db6d4225a9f577d78de557b1ac0fe47f629f93e3427fecf9fa176ff34d2c757004d1ea7b67aff007f5a068d5d9bc448cf9ce3d6fa287d1f01ec5c1ec86a5b2ae55b1c71d7a4281f83b4d2356613f3113bd858a41e9fb10900cdf67dfe485c8c42aeca5c2dac457ab1dfd98df8f19d09bb4a194fc4966418f84a218ead3d6100e567124ea5c106fb1b00399865a965906250a2cb48abd2e1653b41604f3aa2f376539940c4982a4f6f26bcb89bd58cda247bdb02a51636cc5e64024c816df1882a1c2829c6af47014157efb241de61aeaa06d3b8d89c0953ac1e94857c15f2497e0ea3eb6ff80362cb3c0b000ee7950a41f0c887ca93b20ca08a39440ae6e8ed83e01709611584526cecb777c3ab3b9ff9d3b88fbe108fc916396d8f01d8ed2364fb5cd32aa405f819ce4738a009929a2acbd16a012938b07f95ca1ae0e95e644d7bb38de900170b1c39b9895e007f5a068d5d9bc448cf9ce3d6fa287d1f01ec5c1ec86a5b2ae55b1c71d7a4281f83b4d2356613f3113bd858a41e9fb10900cdf67dfe485c8c42aeca5c2dac457ab1dfd98df8f19d09bb4a194fc4966418f84a218ead3d6100e567124ea5c106fb1b00399865a965906250a2cb48abd2e1653b41604f3aa2f376539940c4982a4f6f26bcb89bd58cda247bdb02a51636cc5e64024c816df1882a1c2829c6af47014157efb241de61aeaa06d3b8d89c0953ac1e94857c15f2497e0ea3eb6ff80362cb3c0b";
        LengthsVerifier.verifyCorrectPairingPairsLengths(bls12_384_m_params, pairs, numPairs);
        return true;
    }

    function testFormPairingInputBLS12_384_M() public view returns (bool) {
        bytes memory correctInput = hex"070131026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012103c192577dfb697d258e5f48f4c3f36bb518d0ea9b498ca3559dfb03a2c685a529026d331f7ce9cdc5e48d73aeedf0a1d7f7870b788046ec2aff712eda78d3fe42dfb8fe05c47ae860b05717583ae170045b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010109016463d0693ad8bbad0002000ee7950a41f0c887ca93b20ca08a39440ae6e8ed83e01709611584526cecb777c3ab3b9ff9d3b88fbe108fc916396d8f009445fc17ee70f2b9e96db6d4225a9f577d78de557b1ac0fe47f629f93e3427fecf9fa176ff34d2c757004d1ea7b67aff007f5a068d5d9bc448cf9ce3d6fa287d1f01ec5c1ec86a5b2ae55b1c71d7a4281f83b4d2356613f3113bd858a41e9fb10900cdf67dfe485c8c42aeca5c2dac457ab1dfd98df8f19d09bb4a194fc4966418f84a218ead3d6100e567124ea5c106fb1b00399865a965906250a2cb48abd2e1653b41604f3aa2f376539940c4982a4f6f26bcb89bd58cda247bdb02a51636cc5e64024c816df1882a1c2829c6af47014157efb241de61aeaa06d3b8d89c0953ac1e94857c15f2497e0ea3eb6ff80362cb3c0b000ee7950a41f0c887ca93b20ca08a39440ae6e8ed83e01709611584526cecb777c3ab3b9ff9d3b88fbe108fc916396d8f01d8ed2364fb5cd32aa405f819ce4738a009929a2acbd16a012938b07f95ca1ae0e95e644d7bb38de900170b1c39b9895e007f5a068d5d9bc448cf9ce3d6fa287d1f01ec5c1ec86a5b2ae55b1c71d7a4281f83b4d2356613f3113bd858a41e9fb10900cdf67dfe485c8c42aeca5c2dac457ab1dfd98df8f19d09bb4a194fc4966418f84a218ead3d6100e567124ea5c106fb1b00399865a965906250a2cb48abd2e1653b41604f3aa2f376539940c4982a4f6f26bcb89bd58cda247bdb02a51636cc5e64024c816df1882a1c2829c6af47014157efb241de61aeaa06d3b8d89c0953ac1e94857c15f2497e0ea3eb6ff80362cb3c0b";
        uint8 numPairs = 2;
        bytes memory pairs = hex"000ee7950a41f0c887ca93b20ca08a39440ae6e8ed83e01709611584526cecb777c3ab3b9ff9d3b88fbe108fc916396d8f009445fc17ee70f2b9e96db6d4225a9f577d78de557b1ac0fe47f629f93e3427fecf9fa176ff34d2c757004d1ea7b67aff007f5a068d5d9bc448cf9ce3d6fa287d1f01ec5c1ec86a5b2ae55b1c71d7a4281f83b4d2356613f3113bd858a41e9fb10900cdf67dfe485c8c42aeca5c2dac457ab1dfd98df8f19d09bb4a194fc4966418f84a218ead3d6100e567124ea5c106fb1b00399865a965906250a2cb48abd2e1653b41604f3aa2f376539940c4982a4f6f26bcb89bd58cda247bdb02a51636cc5e64024c816df1882a1c2829c6af47014157efb241de61aeaa06d3b8d89c0953ac1e94857c15f2497e0ea3eb6ff80362cb3c0b000ee7950a41f0c887ca93b20ca08a39440ae6e8ed83e01709611584526cecb777c3ab3b9ff9d3b88fbe108fc916396d8f01d8ed2364fb5cd32aa405f819ce4738a009929a2acbd16a012938b07f95ca1ae0e95e644d7bb38de900170b1c39b9895e007f5a068d5d9bc448cf9ce3d6fa287d1f01ec5c1ec86a5b2ae55b1c71d7a4281f83b4d2356613f3113bd858a41e9fb10900cdf67dfe485c8c42aeca5c2dac457ab1dfd98df8f19d09bb4a194fc4966418f84a218ead3d6100e567124ea5c106fb1b00399865a965906250a2cb48abd2e1653b41604f3aa2f376539940c4982a4f6f26bcb89bd58cda247bdb02a51636cc5e64024c816df1882a1c2829c6af47014157efb241de61aeaa06d3b8d89c0953ac1e94857c15f2497e0ea3eb6ff80362cb3c0b";
        (bytes memory input, uint256 _) = GenericEllipticCurve.formBLS12PairingInput(bls12_384_m_params, pairs, numPairs);
        return HelpersForTests.equal(input, correctInput);
    }
}