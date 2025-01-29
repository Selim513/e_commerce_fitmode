class SavedItemState {}

class SavedItemInitial extends SavedItemState {}

class SavedItemSuccess extends SavedItemState {}

class SavedItemFailure extends SavedItemState {
  final String errMessage;

  SavedItemFailure({required this.errMessage});
}

class SavedItemLoading extends SavedItemState {}
