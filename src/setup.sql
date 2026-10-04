CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);

INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders', 'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),
('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');

CREATE TABLE project (
    project_id SERIAL PRIMARY KEY,
    organization_id INTEGER NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(255) NOT NULL,
    project_date DATE NOT NULL,
    FOREIGN KEY (organization_id) REFERENCES organization (organization_id)
);

INSERT INTO project (organization_id, title, description, location, project_date)
VALUES
-- BrightFuture Builders (1)
(1, 'Community Center Renovation', 'Repair and repaint the main hall of the local community center.', 'Downtown Community Center', '2026-11-07'),
(1, 'Playground Rebuild', 'Replace old equipment and install safe surfacing at a neighborhood playground.', 'Maple Street Park', '2026-11-21'),
(1, 'Wheelchair Ramp Installation', 'Build accessible ramps for elderly and disabled residents.', 'Riverside Neighborhood', '2026-12-05'),
(1, 'Solar Panel Workshop', 'Teach volunteers to install small solar panels on community buildings.', 'Eastside Library', '2027-01-16'),
(1, 'Footbridge Repair', 'Restore a damaged pedestrian footbridge over the creek.', 'Cedar Creek Trail', '2027-02-06'),
-- GreenHarvest Growers (2)
(2, 'Urban Garden Planting', 'Plant vegetables and herbs in a shared neighborhood garden.', 'Oak Avenue Community Garden', '2026-11-14'),
(2, 'School Composting Program', 'Set up compost bins and teach students how to compost.', 'Lincoln Elementary School', '2026-12-12'),
(2, 'Rooftop Farm Build', 'Build raised beds for a rooftop vegetable farm.', 'City Youth Center', '2027-01-09'),
(2, 'Seed Library Launch', 'Organize and catalog donated seeds for free community use.', 'Westside Public Library', '2027-02-13'),
(2, 'Harvest Food Share', 'Harvest produce and distribute it to local families in need.', 'Central Farmers Market', '2027-03-06'),
-- UnityServe Volunteers (3)
(3, 'Food Bank Sorting', 'Sort and pack donated food items for distribution.', 'Hope Food Bank', '2026-11-08'),
(3, 'Senior Center Visits', 'Spend time with seniors through games, reading, and conversation.', 'Golden Years Senior Center', '2026-11-28'),
(3, 'Winter Coat Drive', 'Collect, clean, and distribute warm coats to families.', 'Unity Hall', '2026-12-19'),
(3, 'Literacy Tutoring', 'Tutor children in reading and writing skills.', 'Northside Learning Center', '2027-01-23'),
(3, 'Park Cleanup Day', 'Remove litter and plant flowers in a city park.', 'Lakeside Park', '2027-03-20');