import 'package:dartz/dartz.dart';
import 'package:tasks_app/core/errors/failures.dart';
import 'package:tasks_app/features/home/data/models/create_task_model/create_task_model.dart';
import 'package:tasks_app/features/home/data/models/tasks_model/tasks_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, CreateTaskModel>> createTask({
    required String title,
    required String description,
    // required String status,
    required String startDate,
    required String endDate,
    required String employeeId,
    int? departmentId,
  });
  Future<Either<Failure, CreateTaskModel>> updateTask({
    required String title,
    required String description,
    required String status,
    required String startDate,
    required String endDate,
    required String employeeId,
    required String taskId,
    int? departmentId,
  });
  Future<Either<Failure, TasksModel>> getAllTasks();
}
