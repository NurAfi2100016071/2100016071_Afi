import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reply/model/router_provider.dart';
import 'package:reply/router.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Material(
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButton(
                      onPressed: () {
                        Provider.of<RouterProvider>(
                          context,
                          listen: false,
                        ).routePath = const ReplyHomePath();
                      },
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search email',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.mic),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 1),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      _SectionHeader(title: 'YESTERDAY'),
                      _SearchHistoryTile(
                        search: '481 Van Brunt Street',
                        address: 'Brooklyn, NY',
                      ),
                      _SearchHistoryTile(
                        icon: Icons.home,
                        search: 'Home',
                        address: '199 Pacific Street, Brooklyn, NY',
                      ),
                      _SectionHeader(title: 'THIS WEEK'),
                      _SearchHistoryTile(
                        search: 'BEP GA',
                        address: 'Forsyth Street, New York, NY',
                      ),
                      _SearchHistoryTile(
                        search: 'Sushi Nakazawa',
                        address: 'Commerce Street, New York, NY',
                      ),
                      _SearchHistoryTile(
                        search: 'IFC Center',
                        address: '6th Avenue, New York, NY',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 16,
        top: 16,
        bottom: 8,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _SearchHistoryTile extends StatelessWidget {
  const _SearchHistoryTile({
    this.icon = Icons.access_time,
    required this.search,
    required this.address,
  });

  final IconData icon;
  final String search;
  final String address;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
      title: Text(
        search,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        address,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
        ),
      ),
      onTap: () {},
    );
  }
}
