import './Card.dart';

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['𝗔', '2', '3', '4', '5', '6'];
    var suits = ['♦', '❤', '♣', '♠'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank: rank, suit: suit);
        cards.add(card);
      }
    }
  }

  toString() {
    var result = '';
    for (var card in cards) {
      result += card.toString();
    }
    return result;
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit({String suit}) {
    return cards.where((Card card) => card.suit == suit);
  }

  deal({int handSize}) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);

    return hand;
  }

  removeCard({String suit, String rank}) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }
}
