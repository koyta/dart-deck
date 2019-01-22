import './Deck.dart';

void main() {
  var deck = new Deck();
  deck.shuffle();
  print(deck);
  var Player1 = deck.deal(handSize: 4);
  print(deck);
  var Player2 = deck.deal(handSize: 6);
  print(deck);
  print(Player1);
  print(Player2);
}
