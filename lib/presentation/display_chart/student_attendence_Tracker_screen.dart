import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_design/presentation/display_chart/model/student_attendenceModel.dart';

class StudentAttendenceTrackerScreen extends StatefulWidget {
  final List<StudentAttendanceModel> students;
  const StudentAttendenceTrackerScreen({super.key, required this.students});

  @override
  State<StudentAttendenceTrackerScreen> createState() =>
      _StudentAttendenceTrackerScreenState();
}

class _StudentAttendenceTrackerScreenState
    extends State<StudentAttendenceTrackerScreen> {
  //! ------------------------------------------------------------------------

  List<PieChartSectionData> _generatePieChartSections() {
    int totalAttended =
        widget.students.fold(0, (sum, student) => sum + student.attended);
    int totalMissed =
        widget.students.fold(0, (sum, student) => sum + student.missed);

    return [
      PieChartSectionData(
        value: totalAttended.toDouble(),
        color: Colors.green,
        title: 'Attended',
        radius: 50,
        titleStyle: TextStyle(color: Colors.white, fontSize: 16),
      ),
      PieChartSectionData(
        value: totalMissed.toDouble(),
        color: Colors.red,
        title: 'Missed',
        radius: 50,
        titleStyle: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ];
  }

  //! ------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Attendance')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.students.length,
              itemBuilder: (context, index) {
                final student = widget.students[index];
                return ListTile(
                  title: Text(student.name),
                  subtitle: Text(
                      'Attended: ${student.attended}, Missed: ${student.missed}'),
                );
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: PieChart(
                PieChartData(
                  sections: _generatePieChartSections(),
                  centerSpaceRadius: 50,
                  borderData: FlBorderData(show: false),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
