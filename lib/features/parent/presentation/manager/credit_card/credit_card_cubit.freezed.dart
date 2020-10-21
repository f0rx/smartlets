// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'credit_card_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreditCardStateTearOff {
  const _$CreditCardStateTearOff();

// ignore: unused_element
  _CreditCardState call(
      {@required CreditCards cards,
      @required CreditCard card,
      bool isLoading = false,
      bool isCvvFocused = false}) {
    return _CreditCardState(
      cards: cards,
      card: card,
      isLoading: isLoading,
      isCvvFocused: isCvvFocused,
    );
  }
}

// ignore: unused_element
const $CreditCardState = _$CreditCardStateTearOff();

mixin _$CreditCardState {
  CreditCards get cards;
  CreditCard get card;
  bool get isLoading;
  bool get isCvvFocused;

  $CreditCardStateCopyWith<CreditCardState> get copyWith;
}

abstract class $CreditCardStateCopyWith<$Res> {
  factory $CreditCardStateCopyWith(
          CreditCardState value, $Res Function(CreditCardState) then) =
      _$CreditCardStateCopyWithImpl<$Res>;
  $Res call(
      {CreditCards cards, CreditCard card, bool isLoading, bool isCvvFocused});

  $CreditCardCopyWith<$Res> get card;
}

class _$CreditCardStateCopyWithImpl<$Res>
    implements $CreditCardStateCopyWith<$Res> {
  _$CreditCardStateCopyWithImpl(this._value, this._then);

  final CreditCardState _value;
  // ignore: unused_field
  final $Res Function(CreditCardState) _then;

  @override
  $Res call({
    Object cards = freezed,
    Object card = freezed,
    Object isLoading = freezed,
    Object isCvvFocused = freezed,
  }) {
    return _then(_value.copyWith(
      cards: cards == freezed ? _value.cards : cards as CreditCards,
      card: card == freezed ? _value.card : card as CreditCard,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isCvvFocused:
          isCvvFocused == freezed ? _value.isCvvFocused : isCvvFocused as bool,
    ));
  }

  @override
  $CreditCardCopyWith<$Res> get card {
    if (_value.card == null) {
      return null;
    }
    return $CreditCardCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value));
    });
  }
}

abstract class _$CreditCardStateCopyWith<$Res>
    implements $CreditCardStateCopyWith<$Res> {
  factory _$CreditCardStateCopyWith(
          _CreditCardState value, $Res Function(_CreditCardState) then) =
      __$CreditCardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CreditCards cards, CreditCard card, bool isLoading, bool isCvvFocused});

  @override
  $CreditCardCopyWith<$Res> get card;
}

class __$CreditCardStateCopyWithImpl<$Res>
    extends _$CreditCardStateCopyWithImpl<$Res>
    implements _$CreditCardStateCopyWith<$Res> {
  __$CreditCardStateCopyWithImpl(
      _CreditCardState _value, $Res Function(_CreditCardState) _then)
      : super(_value, (v) => _then(v as _CreditCardState));

  @override
  _CreditCardState get _value => super._value as _CreditCardState;

  @override
  $Res call({
    Object cards = freezed,
    Object card = freezed,
    Object isLoading = freezed,
    Object isCvvFocused = freezed,
  }) {
    return _then(_CreditCardState(
      cards: cards == freezed ? _value.cards : cards as CreditCards,
      card: card == freezed ? _value.card : card as CreditCard,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isCvvFocused:
          isCvvFocused == freezed ? _value.isCvvFocused : isCvvFocused as bool,
    ));
  }
}

class _$_CreditCardState extends _CreditCardState {
  const _$_CreditCardState(
      {@required this.cards,
      @required this.card,
      this.isLoading = false,
      this.isCvvFocused = false})
      : assert(cards != null),
        assert(card != null),
        assert(isLoading != null),
        assert(isCvvFocused != null),
        super._();

  @override
  final CreditCards cards;
  @override
  final CreditCard card;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isCvvFocused;

  @override
  String toString() {
    return 'CreditCardState(cards: $cards, card: $card, isLoading: $isLoading, isCvvFocused: $isCvvFocused)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreditCardState &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.card, card) ||
                const DeepCollectionEquality().equals(other.card, card)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isCvvFocused, isCvvFocused) ||
                const DeepCollectionEquality()
                    .equals(other.isCvvFocused, isCvvFocused)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(card) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isCvvFocused);

  @override
  _$CreditCardStateCopyWith<_CreditCardState> get copyWith =>
      __$CreditCardStateCopyWithImpl<_CreditCardState>(this, _$identity);
}

abstract class _CreditCardState extends CreditCardState {
  const _CreditCardState._() : super._();
  const factory _CreditCardState(
      {@required CreditCards cards,
      @required CreditCard card,
      bool isLoading,
      bool isCvvFocused}) = _$_CreditCardState;

  @override
  CreditCards get cards;
  @override
  CreditCard get card;
  @override
  bool get isLoading;
  @override
  bool get isCvvFocused;
  @override
  _$CreditCardStateCopyWith<_CreditCardState> get copyWith;
}
