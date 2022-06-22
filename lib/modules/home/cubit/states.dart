abstract class MoviesStates {}
class HomeInitialState extends MoviesStates {}
class ComingSoonLoadingHomeDataState extends MoviesStates {}
class ComingSoonSuccessHomeDataState extends MoviesStates {}
class ComingSoonErrorHomeDataState extends MoviesStates {}

class InTheatersLoadingHomeDataState extends MoviesStates {}
class InTheatersSuccessHomeDataState extends MoviesStates {}
class InTheatersErrorHomeDataState extends MoviesStates {}

class BoxOfficeLoadingHomeDataState extends MoviesStates {}
class BoxOfficeSuccessHomeDataState extends MoviesStates {}
class BoxOfficeErrorHomeDataState extends MoviesStates {}

class MostPopularMoviesLoadingHomeDataState extends MoviesStates {}
class MostPopularMoviesSuccessHomeDataState extends MoviesStates {}
class MostPopularMoviesErrorHomeDataState extends MoviesStates {}