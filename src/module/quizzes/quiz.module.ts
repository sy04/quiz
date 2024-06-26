import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Subjects } from 'src/schema/subjects.entity';
import { Videos } from 'src/schema/videos.entity';
import { QuizController } from './quiz.controller';
import { QuizService } from './quiz.service';
import { Quizzes } from 'src/schema/quizzes.entity';
import { Quetions } from 'src/schema/quetions.entity';
import { Options } from 'src/schema/options.entity';
import { Answers } from 'src/schema/answers.entity';
import { Roles } from 'src/schema/roles.entity';
import { Users } from 'src/schema/users.entity';
import { Objectives } from 'src/schema/objectives.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      Subjects,
      Videos,
      Quizzes,
      Quetions,
      Options,
      Answers,
      Roles,
      Users,
      Objectives
    ]),
  ],
  controllers: [QuizController],
  providers: [QuizService],
})
export class QuizModule {}