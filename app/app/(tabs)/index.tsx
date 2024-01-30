import { ActivityIndicator, FlatList, Text, View, StyleSheet } from 'react-native';
import TrackListItem from '@/components/TrackListItem';
import { gql, useQuery } from '@apollo/client';

const query = gql`
  query MyQuery($q: String!) {
    searchElRecodoSongs(query: "*") {
              id
              title
              orchestra
              singer
              composer
              author
              date
              style
            }
  }
`;

export default function HomeScreen() {
  const { data, loading, error } = useQuery(query);

  if (loading) {
    return <ActivityIndicator />;
  }

  if (error) {
    return (
      <View style={styles.centeredView}>
        <Text style={styles.errorText}>
          The people who are crazy enough to think they can change the world are the ones who do.
        </Text>
      </View>
    );
  }

  const tracks = data?.searchElRecodoSongs || [];

  return (
    <FlatList
      data={tracks}
      renderItem={({ item }) => <TrackListItem track={item} />}
      showsVerticalScrollIndicator={false}
    />
  );
}

const styles = StyleSheet.create({
  centeredView: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  errorText: {
    fontSize: 24,
    fontWeight: 'bold',
    textAlign: 'center',
    paddingHorizontal: 20,
  }
});