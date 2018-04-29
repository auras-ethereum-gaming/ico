pragma solidity ^0.4.17;

//import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract ADXtoken is MintableToken
{
    uint256 public totalSupply;     //トークンの総量
    string public name;            //トークンの名前
    string public symbol;            //トークンの単位
    uint8 public decimals;            //小数点以下の桁数

    mapping ( address => uint256 ) public balanceOf; //各アドレスの残高


    //イベント通知
    //event Transfer( address indexed from, address indexed to, uint256 value);

    //コンストラクター
    function ADXtoken (uint256 _supply, string _name, string _symbol,uint8 _decimals)
    public{
        balanceOf[msg.sender] = _supply;
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _supply;

    }

    //送金
/*
    function transfer(address _to, uint256 _value)
    public{
        //不正チェック
        require(balanceOf[msg.sender] > _value);

        require(balanceOf[_to] + _value > balanceOf[_to]);
        //送信アドレスと受信アドレスの残高を講師更新
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        //イベント通知
        Transfer(msg.sender, _to, _value );
    }
*/

}
