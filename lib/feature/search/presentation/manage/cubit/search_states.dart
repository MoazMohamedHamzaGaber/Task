abstract class SearchStates{}

class SearchInitialStates extends SearchStates{}

class SearchSuccessStates extends SearchStates{}

class SearchLoadingStates extends SearchStates{}

class SearchErrorStates extends SearchStates{
  final String error;

  SearchErrorStates(this.error);
}