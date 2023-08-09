import 'package:calendar/injection_container.dart';
import 'package:calendar/presentation/page/home/bloc/home_bloc.dart';
import 'package:calendar/presentation/page/home/bloc/home_event.dart';
import 'package:calendar/presentation/page/home/bloc/home_state.dart';
import 'package:calendar/presentation/widget/widget_failure_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeScreenBloc bloc = sl<HomeScreenBloc>();

  @override
  void initState() {
    bloc.add(HomeScreenLoadEvent());
    super.initState();
  }

  void showDayPopup(
    BuildContext context,
    DateTime selectedDay,
    Map<int, int> eventDays,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        final eventDayCode = eventDays[selectedDay.day];
        return Center(
          child: Container(
            color: Colors.red,
            width: 200,
            height: 200,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    '${selectedDay.year}:${selectedDay.month}:${selectedDay.year}:${selectedDay.day}'),
                if (eventDayCode != null) ...[
                  SizedBox(height: 10),
                  Text(eventDayCode.toString())
                ],
              ],
            )),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => bloc,
        child: SafeArea(child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
            builder: (context, state) {
          if (state is HomeScreenLoadingState) {
            return Center(child: CircularProgressIndicator());
          }

          if (state is HomeScreenLoadedState) {
            final monthData = state.monthData;
            final eventsData = state.eventsData;
            final firstDay = DateTime.utc(
              monthData.year,
              int.tryParse(monthData.month) ?? 1,
              1,
            );

            final lastDay = DateTime(firstDay.year, firstDay.month + 1, 0);

            return TableCalendar(
              firstDay: firstDay,
              lastDay: lastDay,
              focusedDay: firstDay,
              calendarFormat: CalendarFormat.month,
              daysOfWeekStyle: DaysOfWeekStyle(
                weekendStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
              calendarStyle: CalendarStyle(
                weekendTextStyle: TextStyle(color: Colors.red),
              ),
              calendarBuilders: CalendarBuilders(
                selectedBuilder: (context, calendarDay, focusedDay) {
                  final dayNumber = calendarDay.day;

                  final eventDayCode = monthData.eventDays[dayNumber];

                  Color? bgColor;

                  if (eventDayCode != null) {
                    bgColor = eventsData.codeColorMap[eventDayCode] ??
                        Colors.transparent;
                  }

                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          dayNumber.toString(),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  );
                },
              ),
              selectedDayPredicate: (calendarDay) {
                final dayNumber = calendarDay.day;

                final eventDayCode = monthData.eventDays[dayNumber];

                return eventDayCode != null;
              },
              daysOfWeekHeight: 40,
              weekendDays: [7],
              startingDayOfWeek: StartingDayOfWeek.monday,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
              ),
              onDaySelected: (selectedDay, focusedDay) {
                showDayPopup(context, selectedDay, monthData.eventDays);
              },
            );
          }

          if (state is HomeScreenErrorState) {
            return Center(
              child: WidgetFailureMessage(errorTitle: state.errorMessage),
            );
          }

          return SizedBox.shrink();
        })),
      ),
    );
  }
}
