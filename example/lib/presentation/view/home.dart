import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            const Text(
              'React Icons',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
              ),
            ),
            const SizedBox(height: 24),

            // Badges Row
            Row(
              children: [
                _buildBadge('npm', 'v5.5.0', Colors.red),
                const SizedBox(width: 12),
                _buildBadge('Node.js CI', 'passing', Colors.green),
              ],
            ),
            const SizedBox(height: 32),

            // Description
            const Text(
              'Include popular icons in your React projects easily with react-icons, which utilizes ES6 imports that allows you to include only the icons that your project is using.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF4A5568),
                height: 1.6,
              ),
            ),
            const SizedBox(height: 48),

            // Include icon sets title
            const Text(
              'Include icon sets',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
              ),
            ),
            const SizedBox(height: 32),

            // Icon Sets Grid
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              childAspectRatio: 1.2,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              children: [
                _buildIconSetCard('Ant Design Icons', '831 icons', [
                  Icons.check_box,
                  Icons.home,
                  Icons.settings,
                  Icons.person,
                  Icons.info,
                  Icons.account_circle,
                  Icons.android,
                  Icons.apps,
                ]),
                _buildIconSetCard('Bootstrap Icons', '2716 icons', [
                  Icons.circle_outlined,
                  Icons.circle,
                  Icons.square_outlined,
                  Icons.square,
                  Icons.format_list_numbered,
                  Icons.looks_one_outlined,
                  Icons.looks_one,
                  Icons.crop_square,
                ]),
                _buildIconSetCard('BoxIcons', '1634 icons', [
                  Icons.calendar_today,
                  Icons.link,
                  Icons.crop_free,
                  Icons.dark_mode,
                  Icons.schedule,
                  Icons.add_circle_outline,
                  Icons.help_outline,
                  Icons.block,
                ]),
                _buildIconSetCard('Circum Icons', '288 icons', [
                  Icons.upload,
                  Icons.call_received,
                  Icons.access_time,
                  Icons.bar_chart,
                  Icons.grid_view,
                  Icons.view_module,
                  Icons.inventory_2_outlined,
                  Icons.folder_outlined,
                ]),
                _buildIconSetCard('CSS.gg', '704 icons', [
                  Icons.alternate_email,
                  Icons.add_circle_outline,
                  Icons.add_box_outlined,
                  Icons.trending_up,
                  Icons.flight_takeoff,
                  Icons.refresh,
                  Icons.file_copy_outlined,
                  Icons.vertical_align_top,
                ]),
                _buildIconSetCard('Devicons', '192 icons', [
                  Icons.android,
                  Icons.code,
                  Icons.warning,
                  Icons.apple,
                  Icons.timeline,
                  Icons.settings,
                  Icons.star_outline,
                  Icons.filter_list,
                ]),
                _buildIconSetCard('Feather', '287 icons', [
                  Icons.text_fields,
                  Icons.bookmark_border,
                  Icons.info_outline,
                  Icons.priority_high,
                  Icons.warning_amber_outlined,
                  Icons.format_list_bulleted,
                  Icons.dehaze,
                  Icons.menu,
                ]),
                _buildIconSetCard('Flat Color Icons', '329 icons', [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.info,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.business,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.folder,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.alternate_email,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Colors.lime,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 12),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Colors.lightGreen,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                ]),
                _buildIconSetCard('Font Awesome 5', '1611 icons', [
                  Icons.security,
                  Icons.build,
                  Icons.terrain,
                  Icons.text_format,
                  Icons.ad_units,
                  Icons.person,
                  Icons.contact_page,
                  Icons.circle_outlined,
                ]),
                _buildIconSetCard('Font Awesome 6', '2048 icons', [
                  const Text(
                    '0',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '1',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '2',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '3',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '4',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icons.skip_next,
                  const Text(
                    '5',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icons.fingerprint,
                ]),
                _buildIconSetCard('Game Icons', '4040 icons', [
                  Icons.home_outlined,
                  Icons.near_me,
                  Icons.tag,
                  Icons.library_books,
                  Icons.view_list,
                  Icons.person_outline,
                  Icons.pets,
                  Icons.psychology,
                ]),
                _buildIconSetCard('Github Octicons icons', '264 icons', [
                  Icons.warning_amber_outlined,
                  Icons.warning,
                  Icons.inventory_2_outlined,
                  Icons.compare_arrows,
                  Icons.south,
                  Icons.edit,
                  Icons.call_made,
                  Icons.more_horiz,
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBadge(String label, String value, Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[100],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
            ),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconSetCard(String title, String count, List<dynamic> icons) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2D3748),
            ),
          ),
          const SizedBox(height: 8),
          Text(count, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
          const SizedBox(height: 16),
          Expanded(
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: icons.take(8).map((icon) {
                if (icon is IconData) {
                  return Icon(icon, size: 20, color: const Color(0xFF4A5568));
                } else if (icon is Widget) {
                  return icon;
                } else {
                  return const SizedBox();
                }
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
