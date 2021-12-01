(**This module contains that functions necessary to create training and
   test data for predicting outputs using OWL regression algorithms*)

type regression =
  | Ridge
  | LASSO
  | Logistic
  | SVM
  | OLS  (**the type containing all possible kinds of regression*)

type train_test_data = {
  features_training : Owl.Mat.mat;
  features_test : Owl.Mat.mat;
  output_training : Owl.Mat.mat;
  output_testing : Owl.Mat.mat;
}
(**the type containing all relevant sections of the encoded matrix*)

val train_test_model :
  int array list -> float -> regression -> float array
(**[train_test_model encoded_subreddt percent_training regression_type]
   is resulting weights of the regression*)

val get_training_data : Owl.Mat.mat -> float -> train_test_data
(**[get_training_data encoded_matrix percent_training] is a record
   containing train_test_data (the relevant sections of the encoded
   matrix)*)

val create_matrix : int array list -> Owl.Mat.mat
(**[create_matrix encoded_subreddit] is the encoded subreddit in an Owl
   matrix*)

val calc_upvotes : Owl.Mat.mat -> float array -> float array
(**[calc_upvotes encoded_matrix encoded_post] is the predicted number of
   upvotes for a given post*)